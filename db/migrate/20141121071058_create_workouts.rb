class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true
      t.date :date
      t.integer :distance

      t.timestamps
    end
  end
end
