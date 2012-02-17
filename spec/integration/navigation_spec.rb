require 'spec_helper'

describe 'Navigation' do
  it 'should navigate to the superclass' do
    visit '/class/String'
    click_link 'Object'
    current_path.should == '/class/Object'
  end
end