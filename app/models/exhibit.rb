class Exhibit < ApplicationRecord
  belongs_to :user
  has_many :exhibit_digital_objects
  has_many :digital_objects, -> { select('digital_objects.*, exhibit_digital_objects.note as note') }, through: :exhibit_digital_objects
  accepts_nested_attributes_for :exhibit_digital_objects, reject_if: :all_blank, allow_destroy: true
end
