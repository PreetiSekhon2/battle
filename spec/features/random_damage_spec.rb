feature "Attack player with random damage" do

  scenario "See Player 1 attack player 2" do
    sign_in_and_play
    expect(page).to have_content "Dave : 60HP\nMittens : 60HP\n"
    play_one_round
    expect(page).not_to have_content "Dave : 60HP\nMittens : 60HP\n"
  end

end
