class InsertTypeToSubreddit < ActiveRecord::Migration[5.1]
  def change
    add_column :subreddits, :type, :integer 
  end
end
