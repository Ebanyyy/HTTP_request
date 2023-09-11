#get request
require 'net/http'
require 'json'

url = URI.parse('https://fwr.ventures/disclaimer.html')
# req = Net::HTTP::Get.new(url.to_s)
# res = Net::HTTP.start(url.host, url.port) {|http|
# 	https.request(req)
# 	}
response = Net::HTTP.get_response(url)
parsed_data = JSON.parse(response.body)
puts parsed_data


