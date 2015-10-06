class ChangeAppointmentColumnName < ActiveRecord::Migration
  def change
  	rename_column :appointments, :end_at, :end_time
  end
end
