require "spec_helper"

feature "Paralyse opponent" do

  scenario "NO SWITCH the attacking position from player 1 to player 2" do
    sign_in_and_play
    play_one_round
    click_button "Attack"
    expect(page).not_to have_content "Currently Dave is attacking Mittens"
    expect(page).to have_content "Currently Mittens is attacking Dave"
  end

end
