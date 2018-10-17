require "spec_helper"

feature "switch turns" do

  scenario "switch the attacking position from player 1 to player 2" do
    sign_in_and_play
    play_one_round
    click_link "Attack"
    expect(page).not_to have_content "Currently being attacked: Mittens"
    expect(page).to have_content "Currently being attacked: Dave"
  end

end
