class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.boolean :available, default: true
      t.string :start_time
      t.references :availability, index: true
      t.references :coach, index: true

      t.timestamps
    end
  end
end
