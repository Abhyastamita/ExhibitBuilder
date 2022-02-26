class RenameOrderToObjectOrderInExhibitDigitalObjects < ActiveRecord::Migration[6.1]
  def up
    rename_column :exhibit_digital_objects, :order, :object_order
  end

  def down
    rename_column :exhibit_digital_objects, :object_order, :order
  end
end
