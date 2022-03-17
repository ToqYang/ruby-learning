# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  attr_reader :id_name, :title

  def initialize(id_name:, title:)
    @id_name = id_name
    @title = title
  end
end
