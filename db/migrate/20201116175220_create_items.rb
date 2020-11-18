class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.integer :size
      t.string :gender
      t.boolean :available
      t.integer :price
      t.string :brand
      t.string :initial_condition
      t.integer :num_uses, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
