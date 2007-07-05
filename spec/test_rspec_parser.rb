require File.dirname(__FILE__) + '/spec_helper.rb'



describe "the rspec parser" do
  examples = [
    ["Place your specs here
  - find this spec in spec directory

  Finished in 0.007427 seconds

  1 example, 0 failures", 
  {:successes => 1, :failures => 0}],
    ["This is a bunch of text.
  - perhaps we can throw off the parser...

  Finished in 0.007427 seconds

  2 examples, 0 failures", 
  {:successes => 2, :failures => 0}],
    ["By including lines of numbers in this text
  0 things, 5 other stuff

  Finished in 0.007427 seconds

  1 specification, 0 failures", 
  {:successes => 1, :failures => 0}],
  ["[17, 18, 18, 17]
\"The 'internet'\"

Finished in 0.007427 seconds

2 specifications, 0 failures", 
{:successes => 2, :failures => 0}],
  ["Yadda yadda yadda
    
  Finished in 0.007427 seconds

  0 examples, 1 failures", 
  {:successes => 0, :failures => 1}]]
  
  
  it "should agree with the listed examples" do
    examples.each do |test_results, correct_info|
      parse_result = RSpecParser.parse(test_results)
      correct_info.keys.each do |key|
        parse_result[key].should == correct_info[key]
      end
    end
  end
  
  it "should be able to pick out a stack trace of an error" do
    stack_trace = 
    "/opt/local/lib/ruby/gems/1.8/gems/rake-0.7.3/lib/rake.rb:2028:in `const_missing': uninitialized constant TestRunner (NameError)
            from ./spec/../lib/test-parser/parsers/pyunit.rb:1
            from /opt/local/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:27:in `require'
            from ./spec/../lib/test-parser.rb:5
            from /opt/local/lib/ruby/gems/1.8/gems/rake-0.7.3/lib/rake.rb:1003:in `each'
            from ./spec/../lib/test-parser.rb:5
            from /opt/local/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:27:in `require'
            from ./spec/spec_helper.rb:3
            from /opt/local/lib/ruby/gems/1.8/gems/rspec-1.0.5/lib/spec/runner/behaviour_runner.rb:85:in `load_specs'
            from /opt/local/lib/ruby/gems/1.8/gems/rspec-1.0.5/lib/spec/runner/behaviour_runner.rb:84:in `load_specs'
            from /opt/local/lib/ruby/gems/1.8/gems/rspec-1.0.5/lib/spec/runner/behaviour_runner.rb:22:in `run'
            from /opt/local/lib/ruby/gems/1.8/gems/rspec-1.0.5/lib/spec/runner/command_line.rb:17:in `run'
            from /opt/local/lib/ruby/gems/1.8/gems/rspec-1.0.5/bin/spec:3
            from /opt/local/bin/spec:16

    "
    result = RSpecParser.parse(stack_trace)
    errors = result[:errors]
    errors.length.should == 1
    error = errors.first
    correct_error = {:file=>"/opt/local/lib/ruby/gems/1.8/gems/rake-0.7.3/lib/rake.rb", :message=>"uninitialized constant TestRunner", :error_type=>"NameError", :method=>"const_missing", :line=>"2028"}
    correct_error.keys.each do |key|
      error[key].should == correct_error[key]
    end
  end
end

