class AddColumnsToRosters < ActiveRecord::Migration
  def change
    add_column :rosters, :meetup_id, :integer
    add_column :rosters, :user_id, :integer
  end
end
