require 'spec_helper'

feature 'Accept names' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

#Feature / scenario is in Capybara
