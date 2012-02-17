require 'spec_helper'

describe "Edit Method" do
  it "should update a method's description" do
    visit '/users/sign_in'
    click_link 'Sign up'
    fill_in 'Email', :with => 'jdoe@example.com'
    fill_in 'Password', :with => 'abc123'
    fill_in 'Password confirmation', :with => 'abc123'
    click_button 'Sign up'
    u = User.first
    u.admin = true
    u.save!
    visit '/class/Object'
    click_link 'instance_values'
    current_path.should == '/class/Object/method/instance_values'
    page.should have_content('Object#instance_values')
    fill_in 'meth_description', :with => 'Testing'
    click_button 'Commit'
    visit '/class/Object/method/instance_values'
    page.should have_content('Testing')
  end
end