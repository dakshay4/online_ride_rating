class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.bigint :chauffeur_id
      t.string :from
      t.string :to
      t.timestamp :start_time
      t.timestamp :end_time
      t.float :distance
      t.string :ride_type

      t.timestamps
    end
  end
end
