class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.string :timezone
      t.string :day_of_week
      t.string :available_at
      t.string :available_until
      t.references :coach, index: true

      t.timestamps
    end
  end
end
