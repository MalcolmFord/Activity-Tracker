class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :calories
      t.integer :reps
      t.integer :sets
      t.integer :distance
      t.integer :intensity_level
      t.integer :max_heart_rate
      t.references :user
      t.references :marathon
      t.references :activity_type

      t.timestamps
    end
  end
end
