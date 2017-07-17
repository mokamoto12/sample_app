require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'okamoto', email: 'mokamoto1208@gmail.com')
  end

  test "shoule be valid" do
    assert @user.valid?
  end
end
