require 'spec_helper'

feature 'Playing against computer' do
  scenario 'Accept Computer as opponent when Player 2 is NOT supplied' do
    visit ("/")
    fill_in :player_1_name, with: "Dave"
    click_button "Submit"
    expect(page).to have_content 'Dave vs. Computer'
  end
end

#Feature / scenario is in Capybara
