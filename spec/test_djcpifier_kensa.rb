require 'open-uri'

url = ENV['DJCPIFIER_URL']
puts "Requesting: #{url}"

content = open(url).read

if content == '"djcp"'
  puts 'Success! You just got djcpified!'
else
  raise Exception.new('Failed! You did not get djcpified')
end
