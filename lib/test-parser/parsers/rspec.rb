module TestParser
  class RSpec < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []

      #count them
      test_results.scan(/(\d+) (specification|example)s?, (\d+) failures?/) do |(examples,_,failures)|
        test_info[:failure_count] += failures.to_i
        test_info[:success_count] += examples.to_i - failures.to_i
        test_info[:test_count] += examples.to_i
      end

      #look for errors
      #  ../../test-parser//pkg/test-parser-0.5.0/setup.rb:440: undefined method `set' for class `ConfigTable::ExecItem' (NameError)
      #/opt/[.......]/rake.rb:2028:in `const_missing': uninitialized constant TestRunner (NameError)
      error_regex1 = /\s*(.*?)\:(\d+)\:(in `(.*?)':)? (.*?) \((.*?)\)/
      test_results.scan(error_regex1) do |(file,line,_,method,message,type)|
        error_info = {:file => file,
                      :line => line.to_i,
                      :message => message,
                      :error_type => type,}
        error_info[:method] = method if method
        test_info[:failures] << error_info
      end

      #1)
      #NameError in 'the PyUnitParser should be able to count successes and failures in some examples'
      #undefined local variable or method `results' for PyUnitParser:Module
      #./spec/../lib/test-parser/parsers/pyunit.rb:8:in `parse'
      error_regex2 = /\s+(.*?) in '(.*?)'\s+(.*?)\s+(.*?):(\d+):(in `(.*?)')?/
      test_results.scan(error_regex2) do |(type,test,message,file,line,_,method)|
        error_info = {:error_type => type,
                      :test => test,
                      :message => message,
                      :file => file,
                      :line => line.to_i,
                      }
        error_info[:method] = method if method
        test_info[:failures] << error_info
      end

      #look for failures
      #1)
      #'RSpecParser should agree with the listed examples' FAILED
      #expected 1, got 2 (using ==)
      #./spec/test_rspec_parser_spec.rb:15:
      #
      failure_regex = /\d+\)\s+'(.*?)' FAILED\s+(.*?)\n\s*(.*?):(\d+):/
      test_results.scan(failure_regex) do |(test,message,file,line)|
        test_info[:failures] << {:test => test,
                                 :message => message,
                                 :file => file,
                                 :line => line.to_i,}
      end

      test_info.default = nil
      test_info
    end
  end
end
