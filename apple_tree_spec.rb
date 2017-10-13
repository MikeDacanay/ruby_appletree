require_relative 'apple_tree'
RSpec.describe AppleTree do
	before(:each) do
		@tree1 = AppleTree.new(1)
	end

	it "has getter and setter to age property" do
		@tree1.age = 10
		expect(@tree1.age).to eq(10)
	end

	it "raise an error when trying to set height" do
		expect{@tree1.height = 10}.to raise_error(NoMethodError)
	end

	it "raise an error when trying to set apples" do
		expect{@tree1.apples = 10}.to raise_error(NoMethodError)
	end

	it "has method to increase age/height/apples of appletree" do
		# @tree1.age = 3
		@tree1.year_gone_by
		expect(@tree1.age).to eq(2)
		expect(@tree1.height).to eq(5.25)
		expect(@tree1.apples).to eq(5)
	end

	it "has method to set apples to 0" do
		@tree1.pick_apples
		expect(@tree1.apples).to eq(0)
	end
end