class User < ActiveRecord::Base
  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
