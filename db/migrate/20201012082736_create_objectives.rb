class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.references :daily_meeting
      t.references :pillar
      t.string :description
      t.boolean :completed
      t.timestamps
    end
  end
end
