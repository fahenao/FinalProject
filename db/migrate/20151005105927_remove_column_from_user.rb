class RemoveColumnFromUser < ActiveRecord::Migration
  def change
  	remove_column :services, :user_id
  end
end
