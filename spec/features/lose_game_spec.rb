require "spec_helper"

feature "Lose a game" do
  scenario "Player 1 loses the game" do
    sign_in_and_play
    while page.has_content? "Attack" do
      click_button "Attack"
      click_link "Play"
    end
    expect(page).to have_content "Congratulations! The winner is:"
  end
end
