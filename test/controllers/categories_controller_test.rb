require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    post :create ,category:{
      name_category: "SSSS"
    }
    assert_redirected_to  categories_path
  end

end
