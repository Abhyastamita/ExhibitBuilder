class Exhibit < ApplicationRecord
  belongs_to :user
  has_many :exhibit_digital_objects, -> { order(object_order: "asc") }, inverse_of: :exhibit, dependent: :destroy
  has_many :digital_objects, -> { select('digital_objects.*, exhibit_digital_objects.note as note, exhibit_digital_objects.object_order as object_order') }, through: :exhibit_digital_objects
  accepts_nested_attributes_for :exhibit_digital_objects, reject_if: :all_blank, allow_destroy: true
  has_rich_text :description_content
end
