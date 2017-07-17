require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'okamoto', email: 'mokamoto1208@gmail.com')
  end

  test "shoule be valid" do
    assert @user.valid?
  end

  test "name shoule be present" do
    @user.name = "  "
    assert_not @user.valid?
  end

  test "email shoule be present" do
    @user.email = "  "
    assert_not @user.valid?
  end
end
