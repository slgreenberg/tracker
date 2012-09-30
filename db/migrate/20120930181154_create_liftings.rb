class CreateLiftings < ActiveRecord::Migration
  def change
    create_table :liftings do |t|
      t.integer :duration
      t.text :exercises
      t.integer :total_reps
      t.integer :sets

      t.timestamps
    end
  end
end
