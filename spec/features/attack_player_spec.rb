feature "Attack player" do
  scenario "See Player 1 attack player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Currently Dave is attacking Mittens"
  end

  scenario "See Player 2 attack player 1" do
    sign_in_and_play
    play_one_round
    click_button "Attack"
    expect(page).to have_content "Currently Mittens is attacking Dave"
  end

end
