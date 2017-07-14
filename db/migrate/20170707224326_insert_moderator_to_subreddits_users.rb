class InsertModeratorToSubredditsUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :subreddits_users, :moderator, :boolean
  end
end
