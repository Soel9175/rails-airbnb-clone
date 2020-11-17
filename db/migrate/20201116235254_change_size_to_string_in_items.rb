class ChangeSizeToStringInItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :size, :string
  end
end
