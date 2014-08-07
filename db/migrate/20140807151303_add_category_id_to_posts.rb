class AddCategoryIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :category, index: true
    add_reference :posts, :user, index: true
  end
end
