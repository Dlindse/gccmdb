require "application_system_test_case"

class DataSourcesTest < ApplicationSystemTestCase
  setup do
    @data_source = data_sources(:one)
  end

  test "visiting the index" do
    visit data_sources_url
    assert_selector "h1", text: "Data Sources"
  end

  test "creating a Data source" do
    visit data_sources_url
    click_on "New Data Source"

    fill_in "Source", with: @data_source.source
    fill_in "Truth uuid", with: @data_source.truth_uuid
    click_on "Create Data source"

    assert_text "Data source was successfully created"
    click_on "Back"
  end

  test "updating a Data source" do
    visit data_sources_url
    click_on "Edit", match: :first

    fill_in "Source", with: @data_source.source
    fill_in "Truth uuid", with: @data_source.truth_uuid
    click_on "Update Data source"

    assert_text "Data source was successfully updated"
    click_on "Back"
  end

  test "destroying a Data source" do
    visit data_sources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data source was successfully destroyed"
  end
end
