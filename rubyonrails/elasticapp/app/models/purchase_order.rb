class PurchaseOrder < ApplicationRecord
  has_many :order_items, dependent: :destroy

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
