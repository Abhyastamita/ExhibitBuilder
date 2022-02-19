class DigitalObject < ApplicationRecord

  has_many :user_digital_objects
  has_many :users, through: :user_digital_objects

  def self.search(query, page)
    begin
      @documents_collection = DPLibrary::DocumentCollection.new({q: query, page: page})
    rescue => exception
      return nil
    end
  end


end
