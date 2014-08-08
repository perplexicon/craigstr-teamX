class User < ActiveRecord::Base
  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def can_edit?(post)
    posts.include?(post) || admin?
  end
end
