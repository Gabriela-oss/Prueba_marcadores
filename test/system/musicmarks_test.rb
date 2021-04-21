require "application_system_test_case"

class MusicmarksTest < ApplicationSystemTestCase
  setup do
    @musicmark = musicmarks(:one)
  end

  test "visiting the index" do
    visit musicmarks_url
    assert_selector "h1", text: "Musicmarks"
  end

  test "creating a Musicmark" do
    visit musicmarks_url
    click_on "New Musicmark"

    fill_in "Album", with: @musicmark.album
    fill_in "Band", with: @musicmark.band
    fill_in "Category", with: @musicmark.category_id
    fill_in "Kind", with: @musicmark.kind_id
    fill_in "Name", with: @musicmark.name
    click_on "Create Musicmark"

    assert_text "Musicmark was successfully created"
    click_on "Back"
  end

  test "updating a Musicmark" do
    visit musicmarks_url
    click_on "Edit", match: :first

    fill_in "Album", with: @musicmark.album
    fill_in "Band", with: @musicmark.band
    fill_in "Category", with: @musicmark.category_id
    fill_in "Kind", with: @musicmark.kind_id
    fill_in "Name", with: @musicmark.name
    click_on "Update Musicmark"

    assert_text "Musicmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Musicmark" do
    visit musicmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musicmark was successfully destroyed"
  end
end
