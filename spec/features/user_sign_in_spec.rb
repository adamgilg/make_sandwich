require "spec_helper"

describe "devise sign in" do
  before(:each) do
    user = User.create(email: "adam@example.com", password: "password")
    visit new_user_session_path
  end

  it "lets users sign in with devise after registration" do
    fill_in "Email", with: "adam@example.com"
    fill_in "Password", with: "password"

    click_button "Sign in"

    page.should have_content("Signed in successfully.")
  end

  it "rejects users with incorrect password" do
    fill_in "Email", with: "adam@example.com"
    fill_in "Password", with: "wordpass"

    click_button "Sign in"

    page.should have_content("Invalid email or password.")
  end
end