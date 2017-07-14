class Comment < ApplicationRecord
  #belongs_to :post
  belongs_to :user

  validates_presence_of :body

  enum comment_type: [:text, :photo, :video, :gif]
end
