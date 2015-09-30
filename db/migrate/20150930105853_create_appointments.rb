class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :begin_at
      t.datetime :end_at
      t.text :comment

      t.timestamps null: false
    end
  end
end
