class Element < Struct.new(:element, :percentage)
  def initialize(attributes)
    self.element = attributes[:element]
    self.percentage = attributes[:percentage]
  end
end