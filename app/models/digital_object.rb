class DigitalObject < ApplicationRecord

  has_many :user_digital_objects
  has_many :users, through: :user_digital_objects
  has_many :exhibit_digital_objects, inverse_of: :digital_object, dependent: :destroy
  has_many :exhibits, through: :exhibit_digital_objects
  accepts_nested_attributes_for :exhibit_digital_objects

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
      new(object: digital_object.id, description: digital_object.description ? digital_object.description.join(" -- ") : "", title: digital_object.title[0], creator: digital_object.creator, dataProvider: digital_object.source['name'] ? digital_object.source['name'] : digital_object.source, sourceLink: digital_object.url, format: digital_object.format)
    rescue => exception
      return nil
    end
  end

  def self.check_db(object_id)
    where(object: object_id).first
  end


end
