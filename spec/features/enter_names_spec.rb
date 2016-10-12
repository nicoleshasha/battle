require './app'
require 'spec_helper'

feature "Enter names do" do
  scenario "fill in form" do
   	sign_in_and_play 
    expect(page).to have_text "Nicole vs. Asif"
  end
end
