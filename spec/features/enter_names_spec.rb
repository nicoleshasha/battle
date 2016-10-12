require './app'
require 'spec_helper'

feature "Enter names do" do
  scenario "fill in form" do
    visit "/"
    fill_in "P1Name", with: "Nicole"
    fill_in "P2Name", with: "Asif"
    click_button "Submit"
    expect(page).to have_text("Nicole vs. Asif")
  end
end
