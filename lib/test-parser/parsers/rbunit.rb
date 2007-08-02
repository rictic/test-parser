module TestParser
  class RubyUnit < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []
      
      #1 tests, 1 assertions, 0 failures, 0 errors
      test_results.scan(/(\d+) tests?, \d+ assertions?, (\d+) failures?, (\d+) errors/).each do |(tests,failures,errors)|
        test_info[:failure_count] += failures.to_i + errors.to_i
        test_info[:test_count] += tests.to_i
      end
      
      #  1) Failure:
      #test_truth(TestGtest) [test/test_gtest.rb:9]:
      #<false> is not true.
      test_results.scan(/\s+\d+\) Failure:\n(.*?) \[(.*?):(\d+)\]:\n(.*?)\n/).each do |(test,file,line,message)|
        test_info[:failures] << {:test => test,
                                 :file => file,
                                 :line => line.to_i,
                                 :message => message}
      end
      
      #  1) Error:
      #test_truth(TestGtest):
      #RuntimeError: What
      #    test/test_gtest.rb:9:in `test_truth'
      test_results.scan(/\s+\d+\) Error:\n(.+?):\n(.+?): (.+?)\n\s*(.+?):(\d+):in `(.+?)'/).each do |(test,error_type,message,file,line,method)|
        test_info[:failures] << {:test => test,
                                 :error_type => error_type,
                                 :message => message,
                                 :file => file,
                                 :line => line.to_i,
                                 :method => method}
      end
      
      
      test_info[:success_count] = test_info[:test_count] - test_info[:failure_count]
      test_info.default = nil
      test_info
    end
  end
end
