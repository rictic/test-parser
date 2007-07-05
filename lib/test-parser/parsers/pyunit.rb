module PyUnitParser
  def self.parse test_results
    test_info = Hash.new(0)
    test_info[:errors] = []
    
    failure_regex = /^(ERROR|FAIL): (.*?)\n-+\nTraceback \(most recent call last\):\n(.*?)\n(---------|=======)/m
    failed_tests = test_results.scan(failure_regex)
    test_info[:failures] += failed_tests.size

    
    critical_errors = test_results.scan(/^  File \"(.*?)\", line (\d+).*?\n(.*?)\n([A-Za-z]*?):(.*?)$/m)
    critical_errors.each do |file,line,stack,error_class,message|
      test_info[:failures] += 1
      test_info[:errors] << {:file => file,
                             :line => line,
                             :stack_trace => stack,
                             :type => error_class,
                             :message => message}
    end

    test_results.scan(/Ran (\d+) tests? in/).each do |successes|
      test_info[:successes] += successes.first.to_i
    end

    test_info
  end
end