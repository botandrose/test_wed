module IntegerAccessor
  def integer_accessor *fields
    fields.each do |field|
      class_eval <<-RUBY
        def #{field}= value
          @#{field} = value.to_i
        end

        def #{field}
          @#{field} || 0
        end
      RUBY
    end
  end
end