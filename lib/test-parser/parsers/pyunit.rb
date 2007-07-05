module PyUnitParser
  def self.parse test_results
      test_info = Hash.new(0)
#     bad_regex = /^(ERROR|FAIL): (.*?)\n-+\nTraceback \(most recent call last\):\n(.*?)\n(---------|=======)/m
#     bad_tests = results.scan(bad_regex)
#     if bad_tests.size == 0
#       critical_errors = results.scan(/^  File \"(.*?)\", line (\d+).*?\n(.*?)\n([A-Za-z]*?):(.*?)$/m)
#       if !critical_errors.empty?
#         critical_errors.each do |error|
#           file = error[0]
#           line = error[1]
#           stack = error[2]
#           error_class = error[3]
#           message = error[4]
#           
#           growler.project_error("#{error_class} in #{file}\nTraceline #{line}\nTrace:\n#{stack}\n\n#{message}")
#         end
# 
#         return
#       end
#       num_tests = 0
#       results.scan(/Ran (\d+) test/).each do |successes|
#         num_tests += successes.first.to_i
#       end
#       growler.passed("Ran #{num_tests} tests")
#     elsif bad_tests.size < 5
#       bad_tests.each do |bad_test|
#         growler.failed("#{bad_test[0]}: #{bad_test[1]}\n\n#{bad_test[2]}")
#       end
#     else 
#       growler.failed("#{bad_tests.size} tests failed")
#     end
    test_info
  end
end