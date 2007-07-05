module RSpecParser
  def self.parse test_results
    spec_regex = /(\d+) (specification|example)s?, (\d+) failures?/
    
    test_info = Hash.new(0)
    test_results.scan(spec_regex) do |(successes,_,failures)|
      test_info[:successes] += successes.to_i
      test_info[:failures] += failures.to_i
    end
    
    "/opt/[.......]/rake.rb:2028:in `const_missing': uninitialized constant TestRunner (NameError)"
    test_info[:errors] = []
    error_regex = /(.*?)\:(\d+)\:in `(.*?)': (.*?) \((.*?)\)/
    test_results.scan(error_regex) do |(file,line,method,message,type)|
      error_info = {:file => file,
                    :line => line,
                    :method => method,
                    :message => message,
                    :error_type => type}
      
      test_info[:errors] << error_info
    end
#         results.scan(/^\d+\)(.*?)\n\n/m) do |error|
#           error = error.first
#           growler.failed(error)
#         end
# 
#       growler.unknown_response

    test_info
  end
end