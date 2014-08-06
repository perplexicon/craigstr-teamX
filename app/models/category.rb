class Category < ActiveRecord::Base
  belongs_to :regions
  validates :name, presence: true
end
