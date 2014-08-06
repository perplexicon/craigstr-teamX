class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :body, null: false
      t.belongs_to :region, null: false

      t.timestamps
    end

    add_index :posts, :name
  end
end
