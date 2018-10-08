RSpec.describe Comedian do
  describe 'Validations' do

    it 'should not be valid without a name' do
      comedian = bill = Comedian.create(age: 50, city: "Los Angeles")

      expect(comedian).to_not be_valid
    end

    it 'should not be valid without an age' do
      comedian = bill = Comedian.create(name: "Bill Bur", city: "Los Angeles")
      
      expect(comedian).to_not be_valid
    end

    it 'should not be valid without a city' do
      comedian = bill = Comedian.create(name: "Bill Bur", age: 50)

      expect(comedian).to_not be_valid
    end
    
    it 'should has_many specials' do
      association = Comedian.reflect_on_association(:specials)
      expect(association.macro).to eq (:has_many)
    end
  end
end

