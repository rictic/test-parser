module TestParser
  class JUnit4 < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []
      
      "Tests run: 2, Failures: 1, Errors: 0"
      test_results.scan(/Tests? run: (\d+), Failures: (\d+), Errors: (\d+)/).each do |(tests,failures,errors)|
        test_info[:failure_count] += failures.to_i + errors.to_i
        test_info[:test_count] += tests.to_i
      end
      
      test_info[:success_count] = test_info[:test_count] - test_info[:failure_count]
      test_info.default = nil
      test_info
    end
  end
end
