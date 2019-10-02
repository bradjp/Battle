def sign_in_and_play
  visit('/')
  fill_in "player_1", :with => "Gold"
  fill_in "player_2", :with => "Silver"
  click_button "Submit"
end
