class CreateMarathons < ActiveRecord::Migration[5.2]
  def change
    create_table :marathons do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :starting_weight
      t.integer :ending_weight
      t.integer :starting_waist_size
      t.integer :ending_waist_size
      t.references :user

      t.timestamps
    end
  end
end
