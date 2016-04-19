

Before do
end

Given(/^this (.*)$/) do |str|
  puts "..this: #{str}"
  sleep 1
end

When(/^that (.*)$/) do |str|
  puts "..that: #{str}"
end

Then(/^everything (.*)$/) do |str|
  puts "..everything: #{str}"
end
