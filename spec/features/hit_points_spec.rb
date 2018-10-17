feature "view hit points" do

  scenario "See Player 1 hit points" do
    visit ("/")
    fill_in :player_1_name, with: "Dave"
    fill_in :player_2_name, with: "Mittens"
    click_button "Submit"
    expect(page).to have_content "Dave : 60HP"
  end

  scenario "See Player 2 hit points" do
    visit ("/")
    fill_in :player_1_name, with: "Dave"
    fill_in :player_2_name, with: "Mittens"
    click_button "Submit"
    expect(page).to have_content "Mittens : 60HP"
  end

end
