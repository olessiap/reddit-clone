class RemovePostFromSubreddits < ActiveRecord::Migration[5.1]
  def change
    remove_reference :subreddits, :post, foreign_key: true
  end
end
