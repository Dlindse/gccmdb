require 'test_helper'

class MeasureTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measure_target = measure_targets(:one)
  end

  test "should get index" do
    get measure_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_measure_target_url
    assert_response :success
  end

  test "should create measure_target" do
    assert_difference('MeasureTarget.count') do
      post measure_targets_url, params: { measure_target: { target: @measure_target.target, truth_uuid: @measure_target.truth_uuid } }
    end

    assert_redirected_to measure_target_url(MeasureTarget.last)
  end

  test "should show measure_target" do
    get measure_target_url(@measure_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_measure_target_url(@measure_target)
    assert_response :success
  end

  test "should update measure_target" do
    patch measure_target_url(@measure_target), params: { measure_target: { target: @measure_target.target, truth_uuid: @measure_target.truth_uuid } }
    assert_redirected_to measure_target_url(@measure_target)
  end

  test "should destroy measure_target" do
    assert_difference('MeasureTarget.count', -1) do
      delete measure_target_url(@measure_target)
    end

    assert_redirected_to measure_targets_url
  end
end
