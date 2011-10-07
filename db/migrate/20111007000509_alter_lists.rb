class AlterLists < ActiveRecord::Migration
  def up
  	add_column("lists", "user_id", :integer, :default => nil)
  end

  def down
  	remove_column("lists", "user_id")
  end
end
