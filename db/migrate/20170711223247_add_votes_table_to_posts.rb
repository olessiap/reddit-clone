class AddVotesTableToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :votes, :integer
    add_column :comments, :votes, :integer
  end
end
