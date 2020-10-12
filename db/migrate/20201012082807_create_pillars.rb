class CreatePillars < ActiveRecord::Migration[5.2]
  def change
    create_table :pillars do |t|
      t.string :title
      t.timestamps
    end
  end
end
