class UserDigitalObject < ApplicationRecord
  belongs_to :user
  belongs_to :digital_object
end
