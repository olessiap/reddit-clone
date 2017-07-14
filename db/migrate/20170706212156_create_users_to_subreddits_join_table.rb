class CreateUsersToSubredditsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :subreddits, :users
  end
end
