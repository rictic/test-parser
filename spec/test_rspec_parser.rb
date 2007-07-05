require File.dirname(__FILE__) + '/spec_helper.rb'



describe "RSpecParser" do
  
  
  
  
  it "should agree with the listed examples" do
    examples = eval(File.read(File.dirname(__FILE__) + '/example_data/rspec.rb'))
    
    examples.each do |test_results, correct_info|
      parse_result = RSpecParser.parse(test_results)
      correct_info.keys.each do |key|
        parse_result[key].should == correct_info[key]
      end
    end
  end
  
end

