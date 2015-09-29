class AddColumnToAppointment < ActiveRecord::Migration
  def change
  	add_column :appointments, :begin_at, :timestamp
  	add_column :appointments, :end_at, :timestamp
  	add_column :appointments, :comment, :text
  end
end
