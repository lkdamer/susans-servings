class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.datetime :date_eaten
      t.integer :user_id

      t.timestamps
    end
  end
end
