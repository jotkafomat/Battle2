
feature 'testing players names are displayed on-screen' do
  scenario 'Names entered in a form' do
sign_in_and_play
    # visit('/names')
    expect(page).to have_content("Emily vs. Krzysztof")
  end
end
