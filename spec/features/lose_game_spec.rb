require "spec_helper"

feature "Lose a game" do
  scenario "player 1 loses the game" do
    sign_in_and_play
    11.times do play_one_round
    end
    expect(page).to have_content "Congratulations! The winner is: Dave"
  end
end
