class ChangeUserIdInWebsitesToNotBeNull < ActiveRecord::Migration
  def up
    change_column :websites, :user_id, :integer, :null => false
  end

  def down
  end
end
