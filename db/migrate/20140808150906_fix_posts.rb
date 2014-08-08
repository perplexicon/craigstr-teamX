class FixPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :posts_file_name, :avatar_file_name
    rename_column :posts, :posts_content_type, :avatar_content_type
    rename_column :posts, :posts_file_size, :avatar_file_size
    rename_column :posts, :posts_updated_at, :avatar_updated_at
  end
end
