def sign_in_and_play
  visit "/"
  fill_in "P1Name", with: "Nicole"
  fill_in "P2Name", with: "Asif"
  click_button "Submit"
end