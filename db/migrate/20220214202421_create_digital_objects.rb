class CreateDigitalObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :digital_objects do |t|
      t.string :object
      t.string :description
      t.string :title
      t.string :creator
      t.date :date
      t.string :dataProvider
      t.string :sourceLink
      t.string :format
      t.string :place
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
