class CreateDailyMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_meetings do |t|
      t.datetime :start_time
      t.integer :energy_p
      t.integer :energy_i
      t.integer :energy_e
      t.text :comments
      t.timestamps
    end
  end
end
