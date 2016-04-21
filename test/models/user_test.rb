require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Foo Bar', email: 'foo@bar.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'email should be less than 50 chars' do
    assert @user.email.length < 50
  end
end
