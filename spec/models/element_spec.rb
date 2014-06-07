require 'spec_helper'

describe Element do 
  describe 'initialize' do
    it 'is initialized with a hash of attributes' do
      element = Element.new(element: "name", percentage: 10000)
      element.element.should == "name"
      element.percentage.should == 10000
    end
  end
end
