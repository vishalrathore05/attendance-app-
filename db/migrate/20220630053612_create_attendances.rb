class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :user
      t.string :month
      t.string :integer
      t.integer :year
      t.date :on_day
      t.boolean :present
      t.text :absence_reason

      t.timestamps
    end
  end
end
