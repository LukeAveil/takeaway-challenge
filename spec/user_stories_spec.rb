require 'menu'
require 'takeaway'


describe 'user stories' do

	let(:item) { double(:item) }

# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices

	it "so we can check if we want to order something, we read the menu" do
		takeaway = Takeaway.new
		expect { takeaway.read_menu }.not_to raise_error
	end

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes

	it "so we can order a meal, we select several available dishes from the menu" do
		takeaway = Takeaway.new
		expect { takeaway.add_item(item, 2) }.not_to raise_error
	end

# As a customer
# So that I can verify that my order is correct
# I would like to check that the total I have been given matches
# the sum of the various dishes in my order

	it "so we can verify our order, we check the total price of our order matches the sum of the dishes in our order" do
		takeaway = Takeaway.new
		expect { takeaway.total_price }.not_to raise_error
	end

end

