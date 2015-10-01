class AddColumnsToAppointments < ActiveRecord::Migration
  def change
  	add_column :appointments, :user_id, :integer
  	add_column :appointments, :patient_id, :integer
  end
end
