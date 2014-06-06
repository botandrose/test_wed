require 'spec_helper'

describe Checklist do
  
  describe '#total_budget' do
    it 'returns the users established total budget' do
      subject.total_budget = 6900
      subject.total_budget.should == 6900
    end
  end

  describe '#selected_elements' do
    it 'is an array of elements the user chose to include on their checklist' do
      subject.selected_elements = [Element.new(estimation: 162), Element.new(estimation: 567)]
      subject.selected_elements.should == [Element.new(estimation: 162), Element.new(estimation: 567)]
    end
  end

  describe '#selected_element_names=' do
    it 'populates selected_elements with objects in place of supplied names' do
      subject.selected_element_names = ["Dress", "Rings"]
      subject.selected_elements.should == [Element.new(element: "Dress", percentage: 7.5), Element.new(element: "Rings", percentage: 3)]
    end
  end
end