require File.dirname(__FILE__) + '/spec_helper.rb'


describe PyUnitParser do
  it "should be able to count successes and failures in some examples" do
    examples = [["...................
    ----------------------------------------------------------------------
    Ran 19 tests in 2.181s

    OK
    ", {:successes => 19, :failures => 0}]]
    examples.each do |test_results, correct_info|
      parse_result = PyUnitParser.parse(test_results)
      correct_info.keys.each do |key|
        parse_result[key].should == correct_info[key]
      end
    end
  end
end
