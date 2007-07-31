module TestParser
  class PyUnit < Base
    def self.parse test_results
      test_info = Hash.new(0)
      test_info[:failure_count] = 0
      test_info[:failures] = []

      failure_regex = /^(ERROR|FAIL): (.*?)\n-+\nTraceback \(most recent call last\):\n(\s*File \"(.*?)\", line (\d+),( in (.*?))?\n.*?\n(.*?)([A-Za-z]*?): (.*?))\n+(---------|=======)/m
      failed_tests = test_results.scan(failure_regex).each do |_1,test,_stack_trace,file,line,_2,method,_rest_of_stack,error_class,message,_3|
        failure_info = {:file => file,
                        :line => line.to_i,
                        :error_type => error_class,
                        :message => message,
                        :test => test}
        failure_info[:method] = method if method
        test_info[:failures] << failure_info
      end
      test_info[:failure_count] += failed_tests.size


  #     critical_errors = test_results.scan(/^$/m)
  #     critical_errors.each do |file,line,stack,error_class,message|
  #       test_info[:failure_count] += 1
  #       test_info[:failures] << {:file => file,
  #                                :line => line,
  #                                :stack_trace => stack,
  #                                :type => error_class,
  #                                :message => message}
  #     end

      test_results.scan(/Ran (\d+) tests? in/).each do |successes|
        test_info[:success_count] += successes.first.to_i
      end
      test_info[:success_count] -= test_info[:failure_count]

      test_info.default = nil
      test_info
    end
  end
end
