#!/usr/bin/ruby
require 'uri'
prefix="https://fr.lichess.org/training/"
begin
  `wget #{prefix+ARGV[0]} -q -O -`.scan(/"lines":({.*"win"}*),/).last.first.scan(/"[a-h1-8]+"/).each_slice(2){|a,b|puts a.tr '"',''}
rescue
  puts "Invalid parameters."
end
