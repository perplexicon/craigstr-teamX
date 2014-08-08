class CreateSpams < ActiveRecord::Migration
  def change
    create_table :spams do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
