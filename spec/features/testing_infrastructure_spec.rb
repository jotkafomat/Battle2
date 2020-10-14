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
    fill_in :Player_1_Name, with: "one"
    fill_in :Player_2_Name, with: "two"
    click_button("Submit")
    # visit('/names')
    expect(page).to have_content("one vs. two")
  end
end

feature ' Player1 can see Player 2s hit points' do
  scenario 'game play' do
    visit('/')
    fill_in :Player_1_Name, with: "one"
    fill_in :Player_2_Name, with: "two"
    click_button("Submit")

    expect(page).to have_content("Points for player two:")
  end
end
