require	'spec_helper'

describe "testing postcodes" do 

	before(:each) do
		@postcodesio = Postcodeio.new
		@search = @postcodesio.single_postcode_search('sm15rb')
	end


	it "should return status 200" do
		expect(@search['status']).to eq(200)
	end

	it "should return postcode sm69rf" do
		expect(@search['result']['postcode']).to eq'SM1 5RB'
	end

	it "should have eastings 529536" do
		expect(@search['result']['eastings']).to eq 529536
	end

	it "should be nuts UKI63" do
		expect(@search['result']['codes']['nuts']).to eq'UKI63'

	end

	it "should be in england" do
		expect(@search['result']['country']).to eq'England'
	end

	it "should state admin ward to be beddington south" do
		expect(@search['result']['admin_ward']).to eq'Beddington South'
	end


end

