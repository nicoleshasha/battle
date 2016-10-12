require './app'
require 'spec_helper'

feature 'attacking players' do
  scenario 'player 1 attacking player 2' do
  	sign_in_and_play
  	click_button "Attack Asif"
  	expect(page).to have_text "Nicole attacked Asif"
  end
end