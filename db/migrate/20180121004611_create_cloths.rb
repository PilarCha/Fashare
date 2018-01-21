class CreateCloths < ActiveRecord::Migration[5.1]
  def change
    create_table :cloths do |t|
      t.string :apparel
      t.string :gender
      t.string :size
      t.float :price
      t.string :imagelink

      t.timestamps
    end
  end
end
