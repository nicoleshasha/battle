require './app'
require 'spec_helper'

feature "show hit points" do
  scenario "show Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text "Asif = 100HP"
  end
end
