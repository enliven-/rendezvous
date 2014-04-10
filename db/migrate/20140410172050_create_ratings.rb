class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :personality_category_id
      t.integer :rater_id
      t.integer :rated_id
      t.integer :score

      t.timestamps
    end
  end
end
