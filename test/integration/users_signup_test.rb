require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_select 'form[action="/signup"]'
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name: "",
                                         email: "",
                                         password: "",
                                         password_confirmation: "" } }
    end
    assert_template 'users/new'
    assert_select '#error_explanation > ul > li', 6
    assert_select '.field_with_errors', 6
  end
end
