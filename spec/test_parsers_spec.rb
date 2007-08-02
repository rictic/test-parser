require File.dirname(__FILE__) + '/spec_helper.rb'

def have_key? ex, keys
  keys = [keys] if !keys.respond_to?(:each)
  ex.any? {|(_,c,_)| 
    keys.all? {|key| c[key]}
  }
end

def hash_match ex, key
  ex.each do |test_results, correct_info, parsed_info|
    next if !correct_info[key] # don't test things that aren't in the data file
    parsed_info[key].should == correct_info[key]
  end
end



TestParser.parsers.each_value do |parser|

  begin
    data_filename = File.dirname(__FILE__) + "/example_data/" + parser.name.downcase.sub("testparser::","")
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
    
    #if there are any examples at all, they should...
    if !examples.empty?
      it "should give accurate failure_counts" do
        hash_match examples, :failure_count
      end
    end
    
    #if any of the examples include info on any of these properties, ensure that the
    #parser aligns with that property
    [:success_count, :test_count].each do |property|
      if have_key? examples, property
        it "should give accurate #{property}s" do
          hash_match examples, property
        end
      end
    end
    
    #if any of the examples include detailed info on failures...
    if have_key? examples, :failures

      it "should give details on failures" do
        examples.each do |test_results, correct_info, parsed_info|

          next if !correct_info[:failures]

          correct_info[:failures].each do |correct_hash|

            #find the relevent failure in the parsed_info by the filename/line number this may not work for some systems...
            
            parsed_hash = parsed_info[:failures].find {|p_h| 
              if correct_hash[:test]
                p_h[:test] == correct_hash[:test]
              elsif correct_hash[:file] && correct_hash[:line]
                p_h[:file] == correct_hash[:file] && p_h[:line] == correct_hash[:line] 
              else
                fail "Can't match up this error hash, not enough info: #{correct_hash.inspect}"
              end
            }

            if !parsed_hash
              fail "didn't find this error: #{correct_hash.inspect}"
            else
              #anything in the correct_info needs to match what was parsed
              #this enables the parsed data to include more info than we're testing for
              correct_hash.each do |(key,val)|
                parsed_hash[key].should == val
              end
            end
          end
        end
      end
      
      #the number of detailed failure accounts should match the number of reported failures
      it "should give the same number of failure details as there were failures, when :failures is nonempty" do
        examples.each do |test_results, correct_info, parsed_info|
          next if (parsed_info[:failures].empty?)
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
    
  end
end
