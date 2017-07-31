require 'httparty'
require 'json'
# include HTTParty 

class Postcodeio

attr_accessor :single_postcode_result :postarray

include HTTParty 

	base_uri 'http://api.postcodes.io'

	def single_postcode_search(postcode)
		x = self.class.get("/postcodes/#{postcode}")
		@single_postcode_result = JSON.parse(x.body)
	end

end

def multiple_postcode_research(postarrays)
	@multiple_postcode_result = self.class.post('/postcodes/', :body => {'postcode' :postarray})

postcode = Postcodeio.new
postcode.single_postcode_search("sm69rf")
puts postcode.single_postcode_result