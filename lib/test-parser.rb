module TestParser
end
require 'test-parser/version'
require 'rake'
FileList[File.dirname(__FILE__) + '/test-parser/parsers/*.rb'].each {|parser| require parser}
