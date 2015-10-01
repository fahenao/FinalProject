class EditColumnInPatients < ActiveRecord::Migration
  def change
  	def up
  	   change_column :patients, :phone, :integer
  	 end

  	 def down
  	   change_column :patients, :phone, :string
  	 end
  end
end
