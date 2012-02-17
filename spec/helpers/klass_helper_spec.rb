require 'spec_helper'

describe KlassHelper do
  it 'should show ancestors of classes' do
    show_ancestors(String).include?('Comparable').should be_true
  end
end