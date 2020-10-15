feature 'Attack' do
  scenario 'Player1 can attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("You've attack Player2")
  end
end
