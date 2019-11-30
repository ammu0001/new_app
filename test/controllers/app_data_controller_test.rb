require 'test_helper'

class AppDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_datum = app_data(:one)
  end

  test "should get index" do
    get app_data_url, as: :json
    assert_response :success
  end

  test "should create app_datum" do
    assert_difference('AppDatum.count') do
      post app_data_url, params: { app_datum: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show app_datum" do
    get app_datum_url(@app_datum), as: :json
    assert_response :success
  end

  test "should update app_datum" do
    patch app_datum_url(@app_datum), params: { app_datum: {  } }, as: :json
    assert_response 200
  end

  test "should destroy app_datum" do
    assert_difference('AppDatum.count', -1) do
      delete app_datum_url(@app_datum), as: :json
    end

    assert_response 204
  end
end
