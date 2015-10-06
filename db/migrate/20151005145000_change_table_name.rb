class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :appointments_services, :appointment_services
  end
end
