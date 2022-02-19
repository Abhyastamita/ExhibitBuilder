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

  def self.get_new(object_id)
    @documents_collection = DPLibrary::DocumentCollection.new({id: object_id})
    digital_object = @documents_collection.documents.first
    begin
      new(object: digital_object.id, description: digital_object.description, title: digital_object.title, creator: digital_object.creator, dataProvider: digital_object.source, sourceLink: digital_object.url, format: digital_object.format)
    rescue => exception
      return nil
    end
  end

  def self.check_db(object_id)
    where(object: object_id).first
  end


end
