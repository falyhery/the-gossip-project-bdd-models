class AddContentToGossip < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :content, :text
  end
end
