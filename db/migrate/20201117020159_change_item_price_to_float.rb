class ChangeItemPriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :price, :float
  end
end
