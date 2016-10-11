require 'capybara/rspec'



feature "Enter names do" do
  scenario "fill in form" do
    visit "/"
    fill_in "Player one name", :with => "Nicole"
    click_button "Submit"
    expect(page).to have_text("Player One = Nicole")
  end
end
