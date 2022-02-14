class DigitalObject < ApplicationRecord

  def self.search(query)
    begin
      @documents_collection = DPLibrary::DocumentCollection.new({q: query})
    rescue => exception
      return nil
    end
  end


end
