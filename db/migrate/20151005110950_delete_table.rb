class DeleteTable < ActiveRecord::Migration
  def change
  	drop_table :services_users
  end
end
