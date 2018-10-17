require "spec_helper"

feature "reduce points" do

  scenario "attack play 2 reduce HP" do
    sign_in_and_play
    play_one_round
    expect(page).not_to have_content "Mittens : 60HP"
    expect(page).to have_content "Mittens : 50HP"
  end

end
