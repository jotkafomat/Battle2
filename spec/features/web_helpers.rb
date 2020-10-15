
def sign_in_and_play
  visit('/')
  fill_in :Player_1_Name, with: "Emily"
  fill_in :Player_2_Name, with: "Krzysztof"
  click_button("Submit")
end
