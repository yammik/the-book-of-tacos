class Comment < ApplicationRecord
  belongs_to :post

  validates :content, presence: true
  validates :content, length: {in: 200..500}

end
