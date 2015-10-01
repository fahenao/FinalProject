class EditPatientsColumn < ActiveRecord::Migration
  def change
  	change_column :patients, :phone,  :string
  end
end
