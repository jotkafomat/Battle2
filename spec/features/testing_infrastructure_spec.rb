require './app.rb'
#feature 'Testing infrastructure' do
 # scenario 'Can run app and check page content' do
 #   visit('/')
 #   expect(page).to have_content 'Testing infrastructure'
 # end
# end

feature 'testing players names are displayed on-screen' do
  scenario 'Names entered in a form' do
    visit('/')
    fill_in 'Player_1_Name:', with: "one"
    fill_in 'Player_2_Name:', with: "two"
    click_on("Submit")
    visit('/names')
    expect(page).to have_content("Player 1: one Player 2: two")
  end
end

