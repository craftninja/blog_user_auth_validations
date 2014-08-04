require 'spec_helper'

describe User do
  it 'validates that user must enter password' do
    user = User.new
    user.email = 'mike@example.com'
    expect(user.valid?).to be(false)
    user.password_confirmation = 'password'
    expect(user.valid?).to be(false)
    user.password = 'another_password'
    expect(user.valid?).to be(false)
    user.password = 'password'
    expect(user.valid?).to be(true)
  end

  it 'validates that user must enter an email' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'password'
    expect(user.valid?).to be(false)
    user.email = 'mike@example.com'
    expect(user.valid?).to be(true)
  end

end
