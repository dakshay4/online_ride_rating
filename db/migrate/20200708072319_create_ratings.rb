class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :giver_id
      t.integer :receiver_id
      t.references :ride, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
