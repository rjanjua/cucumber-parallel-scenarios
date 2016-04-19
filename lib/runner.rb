#!/usr/bin/env ruby

require_relative '../lib/parser'
feature_file = ARGV[0]
path = File.expand_path("../../specs/#{feature_file}", __FILE__)

puts "the path is: #{path}"

file = File.read(path)
parser = Parser.new
executable_lines = parser.parse(file)

executable_lines.each do |line|
  scenario = "#{path}:#{line}"
  out = %x[cucumber #{scenario} --format json --out #{scenario.split('/')[-1]}.json]
  puts "test::#{scenario}"
  puts ": #{out} :"
end
