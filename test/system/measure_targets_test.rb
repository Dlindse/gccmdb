require "application_system_test_case"

class MeasureTargetsTest < ApplicationSystemTestCase
  setup do
    @measure_target = measure_targets(:one)
  end

  test "visiting the index" do
    visit measure_targets_url
    assert_selector "h1", text: "Measure Targets"
  end

  test "creating a Measure target" do
    visit measure_targets_url
    click_on "New Measure Target"

    fill_in "Target", with: @measure_target.target
    fill_in "Truth uuid", with: @measure_target.truth_uuid
    click_on "Create Measure target"

    assert_text "Measure target was successfully created"
    click_on "Back"
  end

  test "updating a Measure target" do
    visit measure_targets_url
    click_on "Edit", match: :first

    fill_in "Target", with: @measure_target.target
    fill_in "Truth uuid", with: @measure_target.truth_uuid
    click_on "Update Measure target"

    assert_text "Measure target was successfully updated"
    click_on "Back"
  end

  test "destroying a Measure target" do
    visit measure_targets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measure target was successfully destroyed"
  end
end
