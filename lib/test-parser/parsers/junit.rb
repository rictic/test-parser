module TestParser
  class JUnit < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []
      
      #Tests run: 2, Failures: 1, Errors: 0
      test_results.scan(/Tests? run: (\d+), Failures: (\d+), Errors: (\d+)/).each do |(tests,failures,errors)|
        test_info[:failure_count] += failures.to_i + errors.to_i
        test_info[:test_count] += tests.to_i
      end
      
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
