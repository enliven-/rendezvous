class CreatePersonalityCategories < ActiveRecord::Migration
  def change
    create_table :personality_categories do |t|
      t.string :label

      t.timestamps
    end
  end
end
