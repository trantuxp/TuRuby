require "application_system_test_case"

class HanghoasTest < ApplicationSystemTestCase
  setup do
    @hanghoa = hanghoas(:one)
  end

  test "visiting the index" do
    visit hanghoas_url
    assert_selector "h1", text: "Hanghoas"
  end

  test "creating a Hanghoa" do
    visit hanghoas_url
    click_on "New Hanghoa"

    fill_in "Anh", with: @hanghoa.anh
    fill_in "Dongia", with: @hanghoa.dongia
    fill_in "Iddanhmuc", with: @hanghoa.iddanhmuc
    fill_in "Mota", with: @hanghoa.mota
    fill_in "Soluong", with: @hanghoa.soluong
    fill_in "Tensp", with: @hanghoa.tensp
    click_on "Create Hanghoa"

    assert_text "Hanghoa was successfully created"
    click_on "Back"
  end

  test "updating a Hanghoa" do
    visit hanghoas_url
    click_on "Edit", match: :first

    fill_in "Anh", with: @hanghoa.anh
    fill_in "Dongia", with: @hanghoa.dongia
    fill_in "Iddanhmuc", with: @hanghoa.iddanhmuc
    fill_in "Mota", with: @hanghoa.mota
    fill_in "Soluong", with: @hanghoa.soluong
    fill_in "Tensp", with: @hanghoa.tensp
    click_on "Update Hanghoa"

    assert_text "Hanghoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Hanghoa" do
    visit hanghoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hanghoa was successfully destroyed"
  end
end
