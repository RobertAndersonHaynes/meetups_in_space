class AddColumn < ActiveRecord::Migration
  def change
    add_column :meetups, :creator_id, :integer, default: 0 
  end
end
