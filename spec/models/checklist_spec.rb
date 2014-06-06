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
      subject.selected_element_names = [
        "Wedding Dress and Accessories",
        "Wedding Rings"
      ]
      subject.selected_elements.should == [
        Element.new(element: "Wedding Dress and Accessories", percentage: 7.5),
        Element.new(element: "Wedding Rings", percentage: 3)
      ]
    end
  end

  describe '#estimation' do
    it 'calculates element budgets' do
      subject.total_budget = 100
      subject.selected_element_names = [
        "Groom's Attire and Accessories",
        "Wedding Rings"
      ]
      subject.estimation.should == {
        "Groom's Attire and Accessories" => 40,
        "Wedding Rings" => 60
      }
    end
  end
end