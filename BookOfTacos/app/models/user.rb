class User < ApplicationRecord
  # has_many :active_relationships
  # has_many :passive_relationships
  has_many :posts
  has_many :recipes, through: :posts
  has_many :comments, through: :posts
  has_many :ingredients, through: :recipes


  validates :name, presence: true
  validates :name, uniqueness: true

  has_secure_password

  # attr_reader :password


  # def password
  #   @password_digest
  # end
  #
  # def password(password_string)
  #   self.password_digest = BCrypt::Password.create(password_string)
  # end
  #
  # def authenticate(password_string)
  #   BCrypt::Password.new(self.password_digest) == password_string
  # end

end
