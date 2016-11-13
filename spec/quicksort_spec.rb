require 'simplecov'
SimpleCov.start

require 'quicksort'

RSpec.describe 'quicksort.rb' do		
		
	it 'works for empty array' do
		expect(sortuj([])).to eq([])
	end	
	
	it 'works for nil array' do
		expect(sortuj([nil])).to eq([nil])
	end
	
	it 'works sorting ascending' do
		expect(sortuj([8,6,4])).to eq([4,6,8])
	end
	
	it 'works with 0' do
		expect(sortuj([0,0,0])).to eq([0,0,0])
	end
	
	it 'works for small array' do
		expect(sortuj([2,1])).to eq([1,2])
	end
	
	it 'works for already sorted array' do
		expect(sortuj([1,2,3])).to eq([1,2,3])
	end
		
	it 'works for small integers' do
		tabela = [3,5,1,2,7]		
		expect(sortuj(tabela)).to eq([1,2,3,5,7])
	end
	
	it 'works for huge integers' do
		tabela = [34214,55125,11251251225,32131232,75125]
		expect(sortuj(tabela)).to eq([34214,55125,75125,32131232,11251251225])
	end
	
	it 'works for same integers' do
		tabela = [3,3,2,2,5,5]
		expect(sortuj(tabela)).to eq([2,2,3,3,5,5])
	end
	
	it 'works for negative integers' do
		tabela = [-3,-8,-1,-4,-5]
		expect(sortuj(tabela)).to eq([-8,-5,-4,-3,-1])
	end
	
	it 'works for both positive/negative integers' do
		tabela = [10,-5,-16,4,1,9]
		expect(sortuj(tabela)).to eq([-16,-5,1,4,9,10])
	end
	
	it 'works for both huge positive/negative integers' do
		tabela = [125000,-51251215,-2550,5894385345344,12541251]
		expect(sortuj(tabela)).to eq([-51251215,-2550,125000,12541251,5894385345344])
	end
	
	it 'works for decimals' do
		tabela = [5.2,5.1,5.4,5.125,5.12]
		expect(sortuj(tabela)).to eq([5.1,5.12,5.125,5.2,5.4])
	end
	
	it 'works for negative/decimals/huge/zero/same numbers' do
		tabela = [0,-5,-5.1,1.1,1,0,5124124124.512,5124124124.511,0]
		expect(sortuj(tabela)).to eq([-5.1,-5,0,0,0,1,1.1,5124124124.511,5124124124.512])
	end
	
	it 'works for letters' do
		tabela = ['o','c','b','g','a']
		expect(sortuj(tabela)).to eq(['a','b','c','g','o'])
	end
	
	it 'works for same letters' do
		tabela = ['o','b','b','a','a']
		expect(sortuj(tabela)).to eq(['a','a','b','b','o'])
	end
	
	it 'works for small and capital letters' do
		tabela = ['a','b','c','C','B','A']
		expect(sortuj(tabela)).to eq(['A','B','C','a','b','c'])
	end
	
	it 'works for words' do
		tabela = ['test','ala','jan']
		expect(sortuj(tabela)).to eq(['ala','jan','test'])
	end
	
	it 'works for closer words' do
		tabela = ['aaa','aca','aba']
		expect(sortuj(tabela)).to eq(['aaa','aba','aca'])
	end
	
	describe "looking for an error" do
		it 'doesnt work for letters and numbers' do
			tabela = ['c',1,'b',3]
			expect {sortuj(tabela)}.to raise_error
		end	
	end
		
end
