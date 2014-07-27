require './lib/inject'

describe Array do

	array = [1,2,3,4]
	array2 = [10,2]

	context 'when dealing with numbers it should use the provided block' do

		it 'to sum the numbers in an array' do
			expect(array.my_inject{|sum, element| sum + element}).to eq 10
		end

		it 'to multiply the numbers in an array' do
		expect(array.my_inject{|total, element| total * element}).to eq 24
		end

		it 'and include a specified starting value if given' do
			expect(array.my_inject(10){|total, element| total + element}).to eq 20
		end
	end

end