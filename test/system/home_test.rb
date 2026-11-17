require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "Startseite lädt" do
    visit root_path
    assert_selector "h1"
  end
end
