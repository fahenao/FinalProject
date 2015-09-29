class CreateClinicHistories < ActiveRecord::Migration
  def change
    create_table :clinic_histories do |t|

      t.timestamps null: false
    end
  end
end
