class CreateExhibitDigitalObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :exhibit_digital_objects do |t|
      t.references :exhibit, null: false, foreign_key: true
      t.references :digital_object, null: false, foreign_key: true
      t.string :note
      t.integer :order
      t.boolean :display_image?

      t.timestamps
    end
  end
end
