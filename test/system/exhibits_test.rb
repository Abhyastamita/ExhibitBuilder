require "application_system_test_case"

class ExhibitsTest < ApplicationSystemTestCase
  setup do
    @exhibit = exhibits(:one)
  end

  test "visiting the index" do
    visit exhibits_url
    assert_selector "h1", text: "Exhibits"
  end

  test "creating a Exhibit" do
    visit exhibits_url
    click_on "New Exhibit"

    fill_in "Description", with: @exhibit.description
    fill_in "Title", with: @exhibit.title
    click_on "Create Exhibit"

    assert_text "Exhibit was successfully created"
    click_on "Back"
  end

  test "updating a Exhibit" do
    visit exhibits_url
    click_on "Edit", match: :first

    fill_in "Description", with: @exhibit.description
    fill_in "Title", with: @exhibit.title
    click_on "Update Exhibit"

    assert_text "Exhibit was successfully updated"
    click_on "Back"
  end

  test "destroying a Exhibit" do
    visit exhibits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exhibit was successfully destroyed"
  end
end
