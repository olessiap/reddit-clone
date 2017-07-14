class UpdateTypeInSubreddits < ActiveRecord::Migration[5.1]
  def change
    rename_column :subreddits, :type, :subreddit_type
  end
end
