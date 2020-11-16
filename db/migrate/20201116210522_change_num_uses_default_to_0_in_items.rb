class ChangeNumUsesDefaultTo0InItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :num_uses, :integer, default: 0
  end
end
