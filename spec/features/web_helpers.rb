def sign_in_and_play
  visit ("/")
  fill_in :player_1_name, with: "Dave"
  fill_in :player_2_name, with: "Mittens"
  click_button "Submit"
end

def play_one_round
  click_link "Attack"
  click_link "Play"
end
