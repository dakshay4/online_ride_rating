class CreateRidePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :ride_passengers do |t|
      t.references :ride, foreign_key: true
      t.bigint :passenger_id

      t.timestamps
    end
  end
end
