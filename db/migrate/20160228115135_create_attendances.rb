class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :employee_id
      t.date :day
      t.boolean :full_day, default: false
      t.boolean :half_day, default: false

      t.timestamps null: false
    end
  end
end
