class ExhibitDigitalObject < ApplicationRecord
  belongs_to :exhibit
  belongs_to :digital_object
  self.implicit_order_column = "object_order"
  has_rich_text :content
end
