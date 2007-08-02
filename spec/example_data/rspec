#This is a big array of example data.

#It consists of pairs of values.
#The first is the output to parse
#The second is a hash of values that should be extracted by the parser.
[
  ["

Finished in 0.007427 seconds

1 example, 0 failures", 
{:success_count => 1, :failure_count => 0, :test_count => 1 }],

  ["This is a bunch of text.
- perhaps we can throw off the parser...

Finished in 0.007427 seconds

2 examples, 0 failures", 
{:success_count => 2, :failure_count => 0, :test_count => 2}],

  ["[17, 18, 18, 17]
\"The 'internet'\"

Finished in 0.007427 seconds

2 specifications, 0 failures", 
{:success_count => 2, :failure_count => 0, :test_count => 2}],


  ["the PyUnitParser
- should be able to count successes and failures in some examples (ERROR - 1)

the rspec parser
- should agree with the listed examples
- should be able to pick out a stack trace of an error

1)
NameError in 'the PyUnitParser should be able to count successes and failures in some examples'
undefined local variable or method `results' for PyUnitParser:Module
./spec/../lib/test-parser/parsers/pyunit.rb:8:in `parse'
./spec/test_pyunit_parser_spec.rb:13:
./spec/test_pyunit_parser_spec.rb:12:

Finished in 0.01853 seconds

3 examples, 1 failure
",
    {:success_count => 2, :failure_count => 1, :test_count => 3,
       :failures => [{:error_type => "NameError", 
                    :file => './spec/../lib/test-parser/parsers/pyunit.rb', 
                    :test => 'the PyUnitParser should be able to count successes and failures in some examples',
                    :line => 8,
                    :method => 'parse',
                    :message => "undefined local variable or method `results' for PyUnitParser:Module" }]
    }
  ],
  ["1)
  'RSpecParser should agree with the listed examples' FAILED
expected 1, got 2 (using ==)
./spec/test_rspec_parser_spec.rb:15:

Finished in 0.08832 seconds

1 examples, 1 failure
",{:failure_count => 1,
   :failures => [{:test => 'RSpecParser should agree with the listed examples',
                    :message => 'expected 1, got 2 (using ==)',
                    :file => './spec/test_rspec_parser_spec.rb',
                    :line => 15
    }]}],
  ["RSpecParser
- should agree with the listed examples

PyUnitParser
- should agree with the listed examples (ERROR - 1)

1)
SyntaxError in 'PyUnitParser should agree with the listed examples'
(eval):30: compile error
(eval):25: parse error, unexpected '=', expecting tASSOC
    :test_names = [\"Should perform the same as reading, then parsing the header\",
                 ^
(eval):30: parse error, unexpected '}', expecting $
./spec/test_parsers.rb:21:
./spec/test_parsers.rb:21:

Finished in 0.01552 seconds

2 examples, 1 failure
",
    {:failure_count => 1, :success_count => 1,
     :failures => [
       {:file => "(eval)",
        :line => 25,
        :test => "PyUnitParser should agree with the listed examples",
        :error_type => "SyntaxError",
        :message => "(eval):30: compile error",
        }
       ]
    }
  ],
  
  
]