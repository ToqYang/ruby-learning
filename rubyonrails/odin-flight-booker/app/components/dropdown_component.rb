# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  attr_reader :id_name

  def initialize(id_name:)
    @id_name = id_name
  end

  def title
    id_name.to_s.capitalize
  end
end
