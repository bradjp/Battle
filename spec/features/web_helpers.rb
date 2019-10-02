def sign_in_and_play
  visit('/')
  fill_in "player_1", :with => "Itchy"
  fill_in "player_2", :with => "Scratchy"
  click_button "Submit"
end
