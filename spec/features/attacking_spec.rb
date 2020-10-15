feature 'Attack' do
  scenario 'After attack HP of player2 is reduced by 10' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Krzysztof's HP: 50")
  end
end
