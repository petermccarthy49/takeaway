require 'menu'

describe Menu do

	let (:menu) { Menu.new }
	let (:dish) { double :dish, :name => "Rice", :price => 2 }

	it 'is empty when created' do
		menu = Menu.new
		expect(menu.dishes).to be_an_instance_of Array
		expect(menu.dishes).to eq []
	end

	it 'can add dishes' do
		menu.add_dish(dish)
		expect(menu.dishes).to eq [dish]
	end

	it 'should know if it contains a particular dish' do
		menu.add_dish(dish)
		expect(menu.contains?(dish.name)).to be true
	end

	it 'should know if it doesnt contain a particular dish' do
		
	end

	# it 'can show all the dishes on the menu' do
		
	# end
	
end