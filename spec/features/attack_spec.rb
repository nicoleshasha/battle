require './app'
require 'spec_helper'

feature 'attacking players' do
  scenario 'player 1 attacking player 2' do
  	sign_in_and_play
  	click_button "Attack Asif"
  	expect(page).to have_text "Nicole attacked Asif"
  end
  scenario 'player 1 attacking player 2 reduces HP' do
    sign_in_and_play
  	click_button "Attack Asif"
    expect(page).to have_text "Asif = 90HP"
  end
end


feature 'swapping turns' do
  scenario 'player 2 attacks after player 1' do
    sign_in_and_play
    click_button "Attack Asif"
    visit '/play'
    find_button("Attack Nicole")
  end
end
