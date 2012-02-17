require 'spec_helper'

describe 'Navigation' do
  it 'should navigate to the superclass' do
    visit '/class/String'
    click_link 'Object'
    current_path.should == '/class/Object'
  end

  it 'should navigate to an ancestor' do
    visit '/class/Object'
    click_link 'Kernel'
    current_path.should == '/module/Kernel'
  end
end