require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  before(:each) do
    @user = User.create(name: 'Test user', email: 'test@gmail.com', password: '000000', password_confirmation: '000000',
                        confirmation_token: nil, confirmed_at: Time.now)
  end
end
