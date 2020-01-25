require 'test_helper'

class MeasuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measure = measures(:one)
  end

  test "should get index" do
    get measures_url
    assert_response :success
  end

  test "should get new" do
    get new_measure_url
    assert_response :success
  end

  test "should create measure" do
    assert_difference('Measure.count') do
      post measures_url, params: { measure: { agency: @measure.agency, city: @measure.city, country_id: @measure.country_id, country_region: @measure.country_region, data_source_id: @measure.data_source_id, description: @measure.description, ghgs_affected: @measure.ghgs_affected, impact_evaluation: @measure.impact_evaluation, impact_on_eu_ets_esd_or_lulucf_emissions: @measure.impact_on_eu_ets_esd_or_lulucf_emissions, jurisdiction: @measure.jurisdiction, link: @measure.link, measure_financing_period_start: @measure.measure_financing_period_start, measure_financing_quantity: @measure.measure_financing_quantity, measure_implementation_period_end_year: @measure.measure_implementation_period_end_year, measure_implementation_period_start_year: @measure.measure_implementation_period_start_year, measure_status: @measure.measure_status, measure_targets: @measure.measure_targets, measure_type: @measure.measure_type, measure_written_year: @measure.measure_written_year, name: @measure.name, percent_private_funded: @measure.percent_private_funded, related_documents_text: @measure.related_documents_text, related_documents_url: @measure.related_documents_url, related_to_eu_policy: @measure.related_to_eu_policy, related_to_eu_policy_boolean: @measure.related_to_eu_policy_boolean, related_to_neeap_policy: @measure.related_to_neeap_policy, related_to_neeap_policy_boolean: @measure.related_to_neeap_policy_boolean, total_ghg_emissions_reductions_in_2020: @measure.total_ghg_emissions_reductions_in_2020, total_ghg_emissions_reductions_in_2030: @measure.total_ghg_emissions_reductions_in_2030, truth_uuid: @measure.truth_uuid } }
    end

    assert_redirected_to measure_url(Measure.last)
  end

  test "should show measure" do
    get measure_url(@measure)
    assert_response :success
  end

  test "should get edit" do
    get edit_measure_url(@measure)
    assert_response :success
  end

  test "should update measure" do
    patch measure_url(@measure), params: { measure: { agency: @measure.agency, city: @measure.city, country_id: @measure.country_id, country_region: @measure.country_region, data_source_id: @measure.data_source_id, description: @measure.description, ghgs_affected: @measure.ghgs_affected, impact_evaluation: @measure.impact_evaluation, impact_on_eu_ets_esd_or_lulucf_emissions: @measure.impact_on_eu_ets_esd_or_lulucf_emissions, jurisdiction: @measure.jurisdiction, link: @measure.link, measure_financing_period_start: @measure.measure_financing_period_start, measure_financing_quantity: @measure.measure_financing_quantity, measure_implementation_period_end_year: @measure.measure_implementation_period_end_year, measure_implementation_period_start_year: @measure.measure_implementation_period_start_year, measure_status: @measure.measure_status, measure_targets: @measure.measure_targets, measure_type: @measure.measure_type, measure_written_year: @measure.measure_written_year, name: @measure.name, percent_private_funded: @measure.percent_private_funded, related_documents_text: @measure.related_documents_text, related_documents_url: @measure.related_documents_url, related_to_eu_policy: @measure.related_to_eu_policy, related_to_eu_policy_boolean: @measure.related_to_eu_policy_boolean, related_to_neeap_policy: @measure.related_to_neeap_policy, related_to_neeap_policy_boolean: @measure.related_to_neeap_policy_boolean, total_ghg_emissions_reductions_in_2020: @measure.total_ghg_emissions_reductions_in_2020, total_ghg_emissions_reductions_in_2030: @measure.total_ghg_emissions_reductions_in_2030, truth_uuid: @measure.truth_uuid } }
    assert_redirected_to measure_url(@measure)
  end

  test "should destroy measure" do
    assert_difference('Measure.count', -1) do
      delete measure_url(@measure)
    end

    assert_redirected_to measures_url
  end
end
