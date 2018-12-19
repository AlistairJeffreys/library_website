require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest

  test "create should require logged-in user" do
    assert_no_difference 'Reservation.count' do
      post reservations_path
    end
    assert_redirected_to login_url
  end
  
  test "destroy should require logged-in user" do
    assert_no_difference 'Reservation.count' do
      delete reservation_path(reservations(:one))
    end
    assert_redirected_to login_url
  end

end
