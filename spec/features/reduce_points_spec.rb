require "spec_helper"

feature "Reduce points" do

  scenario "Attack play 2 reduce HP" do
    sign_in_and_play
    play_one_round
    expect(page).not_to have_content "Mittens : 60HP"
  end

end
