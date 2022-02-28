class ExhibitDigitalObject < ApplicationRecord
  belongs_to :exhibit, inverse_of: :exhibit_digital_objects
  belongs_to :digital_object, inverse_of: :exhibit_digital_objects
  self.implicit_order_column = "object_order"
  has_rich_text :content
end
