class DigitalObject < ApplicationRecord

  def self.search(query, page)
    begin
      @documents_collection = DPLibrary::DocumentCollection.new({q: query, page: page})
    rescue => exception
      return nil
    end
  end


end
