class RemoveColumn < ActiveRecord::Migration[5.2]
  def self.up
  	remove_column :grades, :id_number
  end
end
