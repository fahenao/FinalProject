class AddColumnsToPatient < ActiveRecord::Migration
  def change
  	add_column :patients, :fullname, :string
  	add_column :patients, :phone, :integer
  end
end
