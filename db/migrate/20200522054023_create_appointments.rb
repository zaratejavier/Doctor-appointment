class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appt_date
      t.belongs_to :physician, null: false, foreign_key: true
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
