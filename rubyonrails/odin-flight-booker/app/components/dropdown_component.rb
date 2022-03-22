# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  attr_reader :id_name, :title, :datalist

  def initialize(id_name:, title:, datalist:)
    @id_name = id_name
    @title = title
    @datalist = datalist
  end

  def id_dropdown
    "show_more_#{id_name}"
  end
end
