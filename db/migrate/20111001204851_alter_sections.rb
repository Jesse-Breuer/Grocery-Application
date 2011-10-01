class AlterSections < ActiveRecord::Migration
  def self.up
    add_column("sections", "list_id", :integer)
  end

  def self.down
    remove_column("sections", "list_id")
  end
end
