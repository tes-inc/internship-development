class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string  :name
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :sex
      t.timestamps
    end
  end
end
