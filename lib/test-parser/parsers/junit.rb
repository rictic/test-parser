module TestParser
  class JUnit < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []
      
      #Tests run: 2, Failures: 1, Errors: 0
      test_results.scan(/Tests? run: (\d+),\s+Failures?: (\d+),\s+Errors?: (\d+)/).each do |(tests,failures,errors)|
        test_info[:failure_count] += failures.to_i + errors.to_i
        test_info[:test_count] += tests.to_i
      end
      
      puts 
      
      #need unit tests for this one, this is a lazy include...
      #OK (1 test)
      test_results.scan(/OK \((\d+) tests?\)/).each do |(successes,)|
        test_info[:test_count] += successes.to_i
        test_info[:failure_count] = 0 if test_info[:failure_count] == 0 #this makes sense
      end
      
      # junit.textui.TestRunner.run style output:
      
      #1) testParseInteger(TestEval)junit.framework.AssertionFailedError: expected:<1> but was:<2>
      #        at TestEval.testParseInteger(TestEval.java:6)
      test_results.scan(/\d+\) (.*?\(.*?\))(.*?): (.*?)\n\s+at .*?\((.*?):(\d+)\)/).each do |(test,error_type,message,file,line)|
        test_info[:failures] << {:test => test,
                                 :error_type => error_type,
                                 :message => message,
                                 :file => file,
                                 :line => line.to_i }
      end
      
      
      #ant style output:
      
      #    [junit] TEST org.antlr.test.TestRewriteAST FAILED
      test_results.scan(/TEST ([^ ]*?) FAILED/).each do |(test,)|
        test_info[:failures] << {:test => test}
      end
      
      # 1) testConstructor(com.networksByteDesign.eMarket.inventory.salesItemTest)
      #   "Expected exception was not thrown"
      test_results.scan(/\d+\) (.*?)\s+"(.*?)"/).each do |(test,message)|
        test_info[:failures] << {:test => test, :message => message}
      end
      
      test_info[:success_count] = test_info[:test_count] - test_info[:failure_count]
      test_info.default = nil
      test_info
    end
  end
end
