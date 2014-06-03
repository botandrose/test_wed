class Element
  def initialize(attributes)
    @element = attributes[:element]
    @percentage = attributes[:percentage]
  end

  def estimation
    @attributes.fetch(:estimation)
  end
end