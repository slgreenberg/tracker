class CreateClassTakens < ActiveRecord::Migration
  def change
    create_table :class_takens do |t|
      t.string :name
      t.integer :duration
      t.boolean :equipment_used

      t.timestamps
    end
  end
end
