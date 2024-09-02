class DropTablePosts < ActiveRecord::Migration[7.1]
  def self.down
    drop_table :posts
  end
end
