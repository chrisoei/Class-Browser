require 'spec_helper'

describe 'Login' do
  it 'should not show edit controls if the user is not logged in' do
    visit '/class/String/method/chop'
    page.has_field?('meth_description').should be_false
  end

  it 'should show edit controls if the user is logged in and is an admin user' do
    visit '/users/sign_in'
    click_link 'Sign up'
    fill_in 'Email', :with => 'jdoe@example.com'
    fill_in 'Password', :with => 'abc123'
    fill_in 'Password confirmation', :with => 'abc123'
    click_button 'Sign up'
    u = User.first
    u.admin = true
    u.save!
    visit '/class/String/method/chop'
    page.has_field?('meth_description').should be_true
  end
end