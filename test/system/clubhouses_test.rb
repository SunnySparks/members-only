require "application_system_test_case"

class ClubhousesTest < ApplicationSystemTestCase
  setup do
    @clubhouse = clubhouses(:one)
  end

  test "visiting the index" do
    visit clubhouses_url
    assert_selector "h1", text: "Clubhouses"
  end

  test "creating a Clubhouse" do
    visit clubhouses_url
    click_on "New Clubhouse"

    fill_in "Post", with: @clubhouse.post
    click_on "Create Clubhouse"

    assert_text "Clubhouse was successfully created"
    click_on "Back"
  end

  test "updating a Clubhouse" do
    visit clubhouses_url
    click_on "Edit", match: :first

    fill_in "Post", with: @clubhouse.post
    click_on "Update Clubhouse"

    assert_text "Clubhouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Clubhouse" do
    visit clubhouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clubhouse was successfully destroyed"
  end
end
