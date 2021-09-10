class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :user, index: true
      t.references :coach, index: true
      t.references :timeslot, index: true

      t.timestamps
    end
  end
end
