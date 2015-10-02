class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :appointments, :begin_at, :start_time
  end
end
