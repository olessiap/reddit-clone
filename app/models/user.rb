#applicationRecord inherits from ActiveRecord::Base 

class User < ApplicationRecord
  has_and_belongs_to_many :subreddits
  has_many :comments
  has_many :posts

  before_save { username.downcase! }
  validates_presence_of :username, :password
  validates :password, length: {minimum: 6}
  validates :username, uniqueness: true, format: { without: /\s/ }, length: { maximum: 40 }

end
