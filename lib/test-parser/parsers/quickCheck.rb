module TestParser
  class QuickCheck < Base
    def self.parse test_results
      test_info = Hash.new
      test_info[:failures] = []
      test_info[:failure_count] = 0    
      test_info[:success_count] = 0  
      test_info[:test_count] = 0

      # you should really use the +names option with quickCheck here,
      #   quickCheck doesn't give you much info on the command line, and
      #   every little bit helps
      
      #known bug: need to deal with the characters used to rewrite the number of tests written
      #           i.e. the ascii control characters that quickCheck uses to increment the current number of tests ran
      
      test_results.scan(/((\w*?): )?OK, passed (\d+) tests./).each do |(_1,test,tests_passed,)|
        test_info[:success_count] += 1
        test_info[:test_count] += 1
      end
      
      #this assumes that the counterexample can be shown on a single line
      test_results.scan(/(([^\s]*?): )?(Falsifiable, after (\d+) tests:\n.*?)\n/) do |_1,test,message,successes|
        test_info[:failure_count] += 1
        test_info[:test_count] += 1
        failure_info = {:message => message}
        failure_info[:test] = test if test
        test_info[:failures] << failure_info
      end
      
      test_info
    end
  end
end
