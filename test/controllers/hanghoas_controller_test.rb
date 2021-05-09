require "test_helper"

class HanghoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hanghoa = hanghoas(:one)
  end

  test "should get index" do
    get hanghoas_url
    assert_response :success
  end

  test "should get new" do
    get new_hanghoa_url
    assert_response :success
  end

  test "should create hanghoa" do
    assert_difference('Hanghoa.count') do
      post hanghoas_url, params: { hanghoa: { anh: @hanghoa.anh, dongia: @hanghoa.dongia, iddanhmuc: @hanghoa.iddanhmuc, mota: @hanghoa.mota, soluong: @hanghoa.soluong, tensp: @hanghoa.tensp } }
    end

    assert_redirected_to hanghoa_url(Hanghoa.last)
  end

  test "should show hanghoa" do
    get hanghoa_url(@hanghoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_hanghoa_url(@hanghoa)
    assert_response :success
  end

  test "should update hanghoa" do
    patch hanghoa_url(@hanghoa), params: { hanghoa: { anh: @hanghoa.anh, dongia: @hanghoa.dongia, iddanhmuc: @hanghoa.iddanhmuc, mota: @hanghoa.mota, soluong: @hanghoa.soluong, tensp: @hanghoa.tensp } }
    assert_redirected_to hanghoa_url(@hanghoa)
  end

  test "should destroy hanghoa" do
    assert_difference('Hanghoa.count', -1) do
      delete hanghoa_url(@hanghoa)
    end

    assert_redirected_to hanghoas_url
  end
end
