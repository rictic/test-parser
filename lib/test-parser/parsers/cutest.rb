module TestParser
  class CuTest < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failures] = []
      
      test_results.scan(/Runs: (\d+) Passes: (\d+) Fails: (\d+)/).each do |(test_count,success_count,failure_count)|
        test_info[:test_count] += test_count.to_i
        test_info[:success_count] += success_count.to_i
        test_info[:failure_count] += failure_count.to_i
      end
      
      test_results.scan(/OK \((\d+) tests\)/).each do |(success_count,)|
        test_info[:failure_count] = 0 if !test_info.has_key?(:failure_count)
        test_info[:success_count] += success_count.to_i
        test_info[:test_count] += success_count.to_i
      end
      
      test_results.scan(/\d+\) (.*?): (.*?):(\d+): (.*)/).each do |(test,file,line,message)|
        test_info[:failures] << {:test => test,
                                 :file => file,
                                 :line => line.to_i,
                                 :message => message}
      end
      
      test_info.default = nil
      test_info
    end
  end
end
