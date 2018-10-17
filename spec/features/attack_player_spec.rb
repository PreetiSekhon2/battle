feature "attack player" do
  scenario "see Player 1 attack player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Dave attacked Mittens"
  end
end
