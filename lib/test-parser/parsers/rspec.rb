module RSpecParser
  def self.parse test_results
    spec_regex = /(\d+) (specification|example)s?, (\d+) failures?/
    
    test_info = Hash.new(0)
    test_info[:errors] = []
    test_info[:failures] = []
    
    #count them
    test_results.scan(spec_regex) do |(examples,_,failures)|
      test_info[:failure_count] += failures.to_i
      test_info[:success_count] += examples.to_i - failures.to_i
      test_info[:test_count] += examples.to_i
    end
    
    #look for errors
    "/opt/[.......]/rake.rb:2028:in `const_missing': uninitialized constant TestRunner (NameError)"
    error_regex1 = /(.*?)\:(\d+)\:in `(.*?)': (.*?) \((.*?)\)/
    test_results.scan(error_regex1) do |(file,line,method,message,type)|
      error_info = {:file => file,
                    :line => line.to_i,
                    :method => method,
                    :message => message,
                    :error_type => type,}
      
      test_info[:errors] << error_info
    end
    
    "1)
    NameError in 'the PyUnitParser should be able to count successes and failures in some examples'
    undefined local variable or method `results' for PyUnitParser:Module
    ./spec/../lib/test-parser/parsers/pyunit.rb:8:in `parse'"
    error_regex2 = /\s+(.*?) in '(.*?)'\s+(.*?)\s+(.*?):(\d+):in `(.*?)'/
    test_results.scan(error_regex2) do |(type,test,message,file,line,method)|
      test_info[:errors] << {:error_type => type,
                             :test => test,
                             :message => message,
                             :file => file,
                             :line => line.to_i,
                             :method => method,}
    end
    
    #look for failures
    "1)
    'RSpecParser should agree with the listed examples' FAILED
    expected 1, got 2 (using ==)
    ./spec/test_rspec_parser_spec.rb:15:
    "
    failure_regex = /\d+\)\s+'(.*?)' FAILED\s+(.*?)\n\s*(.*?):(\d+):/
    test_results.scan(failure_regex) do |(test,message,file,line)|
      test_info[:failures] << {:test => test,
                               :message => message,
                               :file => file,
                               :line => line.to_i,}
    end

    test_info
  end
end