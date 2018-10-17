feature "attack player" do
  scenario "see Player 1 attack player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Currently being attacked: Mittens"
  end

  scenario "see Player 2 attack player 1" do
    sign_in_and_play
    play_one_round
    click_link "Attack"
    expect(page).to have_content "Currently being attacked: Dave"
  end

end
