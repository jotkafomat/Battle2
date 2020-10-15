feature 'Attack' do

  scenario 'Player1 can attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Emily attacked Krzysztof")
  end

  scenario 'After attack HP of player2 is reduced by 10' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Krzysztof HP is now 50")
  end
end
