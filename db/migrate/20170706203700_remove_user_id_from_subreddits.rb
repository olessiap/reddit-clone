class RemoveUserIdFromSubreddits < ActiveRecord::Migration[5.1]
  def change
    remove_reference :subreddits, :user, foreign_key: true
  end
end
