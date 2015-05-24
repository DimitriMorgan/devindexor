require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post :create, content: { category: @content.category, created_at: @content.created_at, description: @content.description, download_path: @content.download_path, role: @content.role, source_path: @content.source_path, status: @content.status, sub_category: @content.sub_category, title: @content.title, update_at: @content.update_at }
    end

    assert_redirected_to content_path(assigns(:content))
  end

  test "should show content" do
    get :show, id: @content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content
    assert_response :success
  end

  test "should update content" do
    patch :update, id: @content, content: { category: @content.category, created_at: @content.created_at, description: @content.description, download_path: @content.download_path, role: @content.role, source_path: @content.source_path, status: @content.status, sub_category: @content.sub_category, title: @content.title, update_at: @content.update_at }
    assert_redirected_to content_path(assigns(:content))
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, id: @content
    end

    assert_redirected_to contents_path
  end
end
