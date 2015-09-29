class RenameClinicHistoryTable < ActiveRecord::Migration
  def change
  	rename_table :clinic_histories, :clinical_history
  end
end
