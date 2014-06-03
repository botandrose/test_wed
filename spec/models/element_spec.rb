require 'spec_helper'

describe Element do 
  describe 'initialize' do
    it 'is initialized with a hash of attributes' do
      element = Element.new(estimation: 125)
      element.estimation.should == 125
    end
  end
  
end