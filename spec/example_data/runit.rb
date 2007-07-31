[

["Loaded suite -e
Started
.
Finished in 0.00045 seconds.

1 tests, 1 assertions, 0 failures, 0 errors
",
 {:failure_count => 0, :success_count => 1, :test_count => 1}
],

["Loaded suite test/test_gtest
Started
F
Finished in 0.049108 seconds.

  1) Failure:
test_truth(TestGtest) [test/test_gtest.rb:9]:
<false> is not true.

1 tests, 1 assertions, 1 failures, 0 errors

",
 {:failure_count => 1, :success_count => 0, :test_count => 1,
  :failures => [{:test => "test_truth(TestGtest)",
                 :file => "test/test_gtest.rb",
                 :line => 9,
                 :message => "<false> is not true."}]}
 
],

["Started
E
Finished in 0.00042 seconds.

  1) Error:
test_truth(TestGtest):
RuntimeError: What
    test/test_gtest.rb:9:in `test_truth'

1 tests, 0 assertions, 0 failures, 1 errors
",
 {:failure_count => 1, :success_count => 0, :test_count => 1,
  :failures => [{:test => "test_truth(TestGtest)",
                 :error_type => "RuntimeError",
                 :message => "What",
                 :file => "test/test_gtest.rb",
                 :line => 9,
                 :method => "test_truth"}]}
],

]