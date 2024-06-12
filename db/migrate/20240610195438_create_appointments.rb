class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :counsellor, foreign_key: true
      t.datetime :schedule_time
      t.boolean :confirmation, default: false
      t.text :symptom

      t.timestamps
    end
  end
end
