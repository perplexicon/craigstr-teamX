class User < ActiveRecord::Base
  has_many :posts

  def author_of?(post)
    posts.include?(post)
  end
end
