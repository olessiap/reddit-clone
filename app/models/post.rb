class Post < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :subreddit, optional: true
  has_many :comments

  validates_presence_of :title, length: { minimum: 1 }

  enum post_type: [:text, :photo, :video, :gif]

  #validate :user_spamming

  # def user_spamming
  #   if self.user.posts.order(created_at :desc).first.created_at > Time.now - 5 mins
  #   errors.add("hey #{users.username} wait #{time_remaining} before you post again!")
  #   end
  # end
  #
  # def time_remaining
  #   (Time.now + 5.minutes) - Time.now
  # end

end
