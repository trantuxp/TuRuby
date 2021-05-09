require "test_helper"

class SanphamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sanpham = sanphams(:one)
  end

  test "should get index" do
    get sanphams_url
    assert_response :success
  end

  test "should get new" do
    get new_sanpham_url
    assert_response :success
  end

  test "should create sanpham" do
    assert_difference('Sanpham.count') do
      post sanphams_url, params: { sanpham: { dongia: @sanpham.dongia, iddanhmuc: @sanpham.iddanhmuc, mota: @sanpham.mota, soluong: @sanpham.soluong, tensp: @sanpham.tensp } }
    end

    assert_redirected_to sanpham_url(Sanpham.last)
  end

  test "should show sanpham" do
    get sanpham_url(@sanpham)
    assert_response :success
  end

  test "should get edit" do
    get edit_sanpham_url(@sanpham)
    assert_response :success
  end

  test "should update sanpham" do
    patch sanpham_url(@sanpham), params: { sanpham: { dongia: @sanpham.dongia, iddanhmuc: @sanpham.iddanhmuc, mota: @sanpham.mota, soluong: @sanpham.soluong, tensp: @sanpham.tensp } }
    assert_redirected_to sanpham_url(@sanpham)
  end

  test "should destroy sanpham" do
    assert_difference('Sanpham.count', -1) do
      delete sanpham_url(@sanpham)
    end

    assert_redirected_to sanphams_url
  end
end
