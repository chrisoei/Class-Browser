require 'spec_helper'

describe ApplicationHelper do
  it 'should show public instance methods of a class' do
    show_methods(Object, :public_instance_methods).include?("clone").should be_true
  end

  it 'should show methods of a module' do
    show_methods(Enumerable, :public_instance_methods).include?("grep").should be_true
  end
end
