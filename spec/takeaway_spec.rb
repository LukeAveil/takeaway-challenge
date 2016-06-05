require 'takeaway'
require 'menu'
require 'order'

describe Takeaway do

	subject(:takeaway) { described_class.new }

	let(:item) { double(:item) }

	it "can list a menu of items and prices" do
		expect(takeaway.read_menu).to eq Menu::STANDARD_MENU
	end

	describe '#add_item' do

		it "adds item to order" do
			takeaway.add_item(item, 2)
			expect(takeaway.include?(item)).to eq true 
		end

	end

end