class CreateUserDigitalObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :user_digital_objects do |t|
      t.references :user, null: false, foreign_key: true
      t.references :digital_object, null: false, foreign_key: true

      t.timestamps
    end
  end
end
