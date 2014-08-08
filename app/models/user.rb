class User < ActiveRecord::Base
  has_many :posts
  has_many :spams
  has_many :spammed_posts, through: :spams, source: :post

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def author_of?(post)
    posts.include?(post)
  end

  def spam(post)
    spammed_posts << post
  end

  def unspam(post)
    spammed_posts.delete(post)
  end

  def spammed?(post)
    spammed_posts.include?(post)
  end
end
