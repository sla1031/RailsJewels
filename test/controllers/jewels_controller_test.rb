require 'test_helper'

class JewelsControllerTest < ActionController::TestCase
  setup do
    @jewel = jewels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jewel" do
    assert_difference('Jewel.count') do
      post :create, jewel: { Collection_id: @jewel.Collection_id, description: @jewel.description, name: @jewel.name, picture: @jewel.picture, price: @jewel.price, stock: @jewel.stock }
    end

    assert_redirected_to jewel_path(assigns(:jewel))
  end

  test "should show jewel" do
    get :show, id: @jewel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewel
    assert_response :success
  end

  test "should update jewel" do
    patch :update, id: @jewel, jewel: { Collection_id: @jewel.Collection_id, description: @jewel.description, name: @jewel.name, picture: @jewel.picture, price: @jewel.price, stock: @jewel.stock }
    assert_redirected_to jewel_path(assigns(:jewel))
  end

  test "should destroy jewel" do
    assert_difference('Jewel.count', -1) do
      delete :destroy, id: @jewel
    end

    assert_redirected_to jewels_path
  end
end
