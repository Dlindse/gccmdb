require "application_system_test_case"

class MeasuresTest < ApplicationSystemTestCase
  setup do
    @measure = measures(:one)
  end

  test "visiting the index" do
    visit measures_url
    assert_selector "h1", text: "Measures"
  end

  test "creating a Measure" do
    visit measures_url
    click_on "New Measure"

    fill_in "Agency", with: @measure.agency
    fill_in "City", with: @measure.city
    fill_in "Country", with: @measure.country_id
    fill_in "Country region", with: @measure.country_region
    fill_in "Data source", with: @measure.data_source_id
    fill_in "Description", with: @measure.description
    fill_in "Ghgs affected", with: @measure.ghgs_affected
    fill_in "Impact evaluation", with: @measure.impact_evaluation
    fill_in "Impact on eu ets esd or lulucf emissions", with: @measure.impact_on_eu_ets_esd_or_lulucf_emissions
    fill_in "Jurisdiction", with: @measure.jurisdiction
    fill_in "Link", with: @measure.link
    fill_in "Measure financing period start", with: @measure.measure_financing_period_start
    fill_in "Measure financing quantity", with: @measure.measure_financing_quantity
    fill_in "Measure implementation period end year", with: @measure.measure_implementation_period_end_year
    fill_in "Measure implementation period start year", with: @measure.measure_implementation_period_start_year
    fill_in "Measure status", with: @measure.measure_status
    fill_in "Measure targets", with: @measure.measure_targets
    fill_in "Measure type", with: @measure.measure_type
    fill_in "Measure written year", with: @measure.measure_written_year
    fill_in "Name", with: @measure.name
    fill_in "Percent private funded", with: @measure.percent_private_funded
    fill_in "Related documents text", with: @measure.related_documents_text
    fill_in "Related documents url", with: @measure.related_documents_url
    fill_in "Related to eu policy", with: @measure.related_to_eu_policy
    check "Related to eu policy boolean" if @measure.related_to_eu_policy_boolean
    fill_in "Related to neeap policy", with: @measure.related_to_neeap_policy
    fill_in "Related to neeap policy boolean", with: @measure.related_to_neeap_policy_boolean
    fill_in "Total ghg emissions reductions in 2020", with: @measure.total_ghg_emissions_reductions_in_2020
    fill_in "Total ghg emissions reductions in 2030", with: @measure.total_ghg_emissions_reductions_in_2030
    fill_in "Truth uuid", with: @measure.truth_uuid
    click_on "Create Measure"

    assert_text "Measure was successfully created"
    click_on "Back"
  end

  test "updating a Measure" do
    visit measures_url
    click_on "Edit", match: :first

    fill_in "Agency", with: @measure.agency
    fill_in "City", with: @measure.city
    fill_in "Country", with: @measure.country_id
    fill_in "Country region", with: @measure.country_region
    fill_in "Data source", with: @measure.data_source_id
    fill_in "Description", with: @measure.description
    fill_in "Ghgs affected", with: @measure.ghgs_affected
    fill_in "Impact evaluation", with: @measure.impact_evaluation
    fill_in "Impact on eu ets esd or lulucf emissions", with: @measure.impact_on_eu_ets_esd_or_lulucf_emissions
    fill_in "Jurisdiction", with: @measure.jurisdiction
    fill_in "Link", with: @measure.link
    fill_in "Measure financing period start", with: @measure.measure_financing_period_start
    fill_in "Measure financing quantity", with: @measure.measure_financing_quantity
    fill_in "Measure implementation period end year", with: @measure.measure_implementation_period_end_year
    fill_in "Measure implementation period start year", with: @measure.measure_implementation_period_start_year
    fill_in "Measure status", with: @measure.measure_status
    fill_in "Measure targets", with: @measure.measure_targets
    fill_in "Measure type", with: @measure.measure_type
    fill_in "Measure written year", with: @measure.measure_written_year
    fill_in "Name", with: @measure.name
    fill_in "Percent private funded", with: @measure.percent_private_funded
    fill_in "Related documents text", with: @measure.related_documents_text
    fill_in "Related documents url", with: @measure.related_documents_url
    fill_in "Related to eu policy", with: @measure.related_to_eu_policy
    check "Related to eu policy boolean" if @measure.related_to_eu_policy_boolean
    fill_in "Related to neeap policy", with: @measure.related_to_neeap_policy
    fill_in "Related to neeap policy boolean", with: @measure.related_to_neeap_policy_boolean
    fill_in "Total ghg emissions reductions in 2020", with: @measure.total_ghg_emissions_reductions_in_2020
    fill_in "Total ghg emissions reductions in 2030", with: @measure.total_ghg_emissions_reductions_in_2030
    fill_in "Truth uuid", with: @measure.truth_uuid
    click_on "Update Measure"

    assert_text "Measure was successfully updated"
    click_on "Back"
  end

  test "destroying a Measure" do
    visit measures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measure was successfully destroyed"
  end
end
