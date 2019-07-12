require 'test_helper'

class Job2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job2 = job2s(:one)
  end

  test "should get index" do
    get job2s_url, as: :json
    assert_response :success
  end

  test "should create job2" do
    assert_difference('Job2.count') do
      post job2s_url, params: { job2: { company: @job2.company, description: @job2.description, field_id: @job2.field_id, link: @job2.link, location: @job2.location, title: @job2.title } }, as: :json
    end

    assert_response 201
  end

  test "should show job2" do
    get job2_url(@job2), as: :json
    assert_response :success
  end

  test "should update job2" do
    patch job2_url(@job2), params: { job2: { company: @job2.company, description: @job2.description, field_id: @job2.field_id, link: @job2.link, location: @job2.location, title: @job2.title } }, as: :json
    assert_response 200
  end

  test "should destroy job2" do
    assert_difference('Job2.count', -1) do
      delete job2_url(@job2), as: :json
    end

    assert_response 204
  end
end
