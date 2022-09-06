class CreateDailyStandUps < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_stand_ups do |t|
      t.string :title
      t.string :estimate_time
      t.string :actual_time
      t.string :comment
      t.boolean :status

      t.timestamps
    end
  end
end
