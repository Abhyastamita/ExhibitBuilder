class User < ApplicationRecord

  has_many :user_digital_objects
  has_many :digital_objects, through: :user_digital_objects
  has_many :exhibits, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
end
