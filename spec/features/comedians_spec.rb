
RSpec.describe 'Comedians Page' do
  describe 'as a visitor, when I visit the comedians page' do
    it 'should show a list of all songs' do
      comedian = Comedian.create(name:"Dave Chappelle", age:45, city:"Wasington D.C.")

      visit '/comedians'

      within('#comedian-age') do
        expect(page).to have_content(comedian.age)
      end
    end
  end
end