
#feature 'Testing infrastructure' do
 # scenario 'Can run app and check page content' do
 #   visit('/')
 #   expect(page).to have_content 'Testing infrastructure'
 # end
# end

feature 'Hit points' do
  scenario 'Player1 can see Player 2s hit points' do
    sign_in_and_play

    expect(page).to have_content("Krzysztof: 60HP")
  end
end
