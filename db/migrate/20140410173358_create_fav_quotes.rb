class CreateFavQuotes < ActiveRecord::Migration
  def change
    create_table :fav_quotes do |t|
      t.text :text
      t.integer :user_id
      t.string :source

      t.timestamps
    end
  end
end
