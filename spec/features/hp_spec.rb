require './app'
require 'spec_helper'

feature "show hit points" do
  scenario "show Player 2's hit points" do
    visit "/"
    fill_in "P1Name", with: "Nicole"
    fill_in "P2Name", with: "Asif"
    click_button "Submit"
    expect(page).to have_text "Asif = 100HP"
  end
end
