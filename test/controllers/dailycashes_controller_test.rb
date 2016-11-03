require 'test_helper'

class DailycashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dailycash = dailycashes(:one)
  end

  test "should get index" do
    get dailycashes_url
    assert_response :success
  end

  test "should get new" do
    get new_dailycash_url
    assert_response :success
  end

  test "should create dailycash" do
    assert_difference('Dailycash.count') do
      post dailycashes_url, params: { dailycash: { banklodgment: @dailycash.banklodgment, cashpurchase: @dailycash.cashpurchase, date: @dailycash.date, discount: @dailycash.discount, onlinepaidorder: @dailycash.onlinepaidorder, sale: @dailycash.sale, totaldriverpayout: @dailycash.totaldriverpayout, visa: @dailycash.visa } }
    end

    assert_redirected_to dailycash_url(Dailycash.last)
  end

  test "should show dailycash" do
    get dailycash_url(@dailycash)
    assert_response :success
  end

  test "should get edit" do
    get edit_dailycash_url(@dailycash)
    assert_response :success
  end

  test "should update dailycash" do
    patch dailycash_url(@dailycash), params: { dailycash: { banklodgment: @dailycash.banklodgment, cashpurchase: @dailycash.cashpurchase, date: @dailycash.date, discount: @dailycash.discount, onlinepaidorder: @dailycash.onlinepaidorder, sale: @dailycash.sale, totaldriverpayout: @dailycash.totaldriverpayout, visa: @dailycash.visa } }
    assert_redirected_to dailycash_url(@dailycash)
  end

  test "should destroy dailycash" do
    assert_difference('Dailycash.count', -1) do
      delete dailycash_url(@dailycash)
    end

    assert_redirected_to dailycashes_url
  end
end
