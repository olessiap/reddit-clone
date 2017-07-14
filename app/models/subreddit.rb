class Subreddit < ApplicationRecord
  #TYPE = (0..4).to_a.freeze

  has_many :posts
  has_and_belongs_to_many :users

  validates_presence_of :name, :description
  #validates :type, inclusion: { in: [0, 1, 2, 3],
    #message: "%{value} is an invalid user type" }
  enum subreddit_type: [:public_type, :restricted, :private_type, :gold__only]
end
