class CreateHearteds < ActiveRecord::Migration
  def change
    create_table :hearteds do |t|
      t.integer :userx_id
      t.integer :usery_id
      t.boolean :matched
      t.timestamp :userx_heart_time
      t.timestamp :usery_heart_time
      t.timestamp :match_time
      t.timestamp :notification_time

      t.timestamps
    end
  end
end
