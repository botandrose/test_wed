require 'active_model' 

class Checklist 
  include ActiveModel::Model
  include ApplicationHelper
  attr_accessor :selected_elements

  def total_budget= value
    @total_budget = value.to_i
    estimation if self.selected_elements
  end

  def total_budget
    @total_budget
  end

  def selected_element_names= names
    elements_of_wedding = []
    names.each do |element|
      percentage = elements[element]
      new_wedding_element = Element.new(element: element, percentage: percentage)
      elements_of_wedding << new_wedding_element
    end
   @selected_elements = elements_of_wedding
  end

  def estimation
    total_percent = @selected_elements.map { |element| element.percentage }
    element_names = @selected_elements.map { |element| element.element }
    reduced = total_percent.reduce { |sum, percent| sum + percent }
    estimated_percentage = total_percent.map { |value| (value.to_f/reduced.to_f).round(2) }
    estimated_amounts = estimated_percentage.map { |value| value * total_budget }
    @estimation = Hash[element_names.zip(estimated_amounts)]
  end

end
