class CreateRentings < ActiveRecord::Migration[5.1]
  def change
    create_table :rentings do |t|
      t.references :user, foreign_key: true
      t.references :cloth, foreign_key: true
      t.datetime :checkin
      t.datetime :checkout

      t.timestamps
    end
  end
end
