class Post < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :comments

  validates :title, presence: true
  validates :title, length: {in: 2..50}
  validates :content, presence: true
  validates :content, length: {in: 2..400}

end
