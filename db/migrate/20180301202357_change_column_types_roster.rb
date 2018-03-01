class ChangeColumnTypesRoster < ActiveRecord::Migration
  def up
    remove_column :rosters, :meetup_id
    remove_column :rosters, :user_id
  end

  def down
    add_column :rosters, :meetup_id, :string, null: false
    add_column :rosters, :user_id, :string, null: false
  end
end
