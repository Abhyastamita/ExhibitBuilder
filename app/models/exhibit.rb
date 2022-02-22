class Exhibit < ApplicationRecord
  belongs_to :user
  has_many :exhibit_digital_objects
  has_many :digital_objects, through: :exhibit_digital_objects
end
