class AddAttachmentAvatarToPosts < ActiveRecord::Migration
  def self.up
      t.attachment :posts, :avatar
    end
  end

  def self.down
    remove_attachment :posts, :avatar
  end
end
