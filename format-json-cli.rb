# format-json-cli.rb
require 'json'
input = STDIN.read
begin
  puts JSON.pretty_generate(JSON.parse(input))
rescue => e
  STDERR.puts "Invalid JSON: #{e}"
  exit 1
end
