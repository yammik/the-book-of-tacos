class User < ApplicationRecord
  # has_many :active_relationships
  # has_many :passive_relationships
  has_many :posts
  has_many :recipes, through: :posts
  has_many :comments, through: :posts
  has_many :ingredients, through: :recipes

  validates :name, presence: true
  validates :name, uniqueness: true
end
