require 'test-parser/version'
require 'rake'
FileList[File.dirname(__FILE__) + '/test-parser/parsers/*.rb'].each {|parser| require parser}

module TestParser
  def self.parsers
    {:rspec => TestParser::RSpec,
     :pyunit => TestParser::PyUnit,
     :junit4 => TestParser::JUnit4}
  end
end