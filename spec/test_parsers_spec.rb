#rename this danged file to test_parsers_spec.rb when I'm on the 'net and svn won't whine
require File.dirname(__FILE__) + '/spec_helper.rb'

def have_key? ex, keys
  keys = [keys] if !keys.respond_to?(:each)
  ex.any? {|(_,c,_)| 
    keys.all? {|key| c[key]}
  }
end



TestParser.parsers.each_value do |parser|

  begin
    data_filename = File.dirname(__FILE__) + "/example_data/" + parser.name.downcase.sub("testparser::","") + ".rb"
    examples = eval(File.read(data_filename))
  rescue Exception => err
    STDERR.puts "Syntax error in #{data_filename}:\n\n"
    raise err
  end
  

  describe parser do
    
    before :all do
      examples.each do |example|
        test_results, correct_info = example
        example << parser.parse(test_results)
      end
    end
    
    if !examples.empty?
      it "should give accurate failure_counts" do
        hash_match examples, :failure_count
      end
    end
    
    [:success_count, :test_count].each do |property|
      if have_key? examples, property
        it "should give accurate #{property}s" do
          hash_match examples, property
        end
      end
    end
    
    
    if have_key? examples, :failures
      it "should give details on failures" do
        examples.each do |test_results, correct_info, parsed_info|
          next if !correct_info[:failures]
          correct_info[:failures].each do |correct_hash|
            parsed_hash = parsed_info[:failures].find {|p_h| p_h[:file] == correct_hash[:file] && p_h[:line] == correct_hash[:line] }
            if !parsed_hash
              fail "didn't find the error in '#{correct_hash[:file]}' line #{correct_hash[:line]}"
            else
              correct_hash.each do |(key,val)|
                parsed_hash[key].should == val
              end
            end
          end
        end
      end
      
      it "should give the same number of failure details as there were failures" do
        examples.each do |test_results, correct_info, parsed_info|
          parsed_info[:failures].length.should == parsed_info[:failure_count]          
        end
      end
    end

    if have_key? examples, [:test_count,:success_count]
      it "should give a test_count that's equal to the sum of failure_count and success_count" do
        examples.each do |_tr,_ci, parsed_info|
          next if (!parsed_info[:test_count]) || (!parsed_info[:success_count])
          parsed_info[:test_count].should == parsed_info[:failure_count] + parsed_info[:success_count]
        end
      end
    end


    def hash_match ex, key
      ex.each do |test_results, correct_info, parsed_info|
        next if !correct_info[key] # don't test things that aren't in the data file
        parsed_info[key].should == correct_info[key]
      end
    end
  end
end
