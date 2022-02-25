class ExhibitDigitalObjectsController < ApplicationController

  def model_order
    self.read_attribute(:order)
  end
  
  def model_order=(value)
    self.write_attribute(:order, value)
  end
  
end
