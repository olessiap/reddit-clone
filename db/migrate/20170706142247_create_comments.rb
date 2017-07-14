class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :type
      #t.integer :points
      t.references :user, foreign_key: true
      #t.references :username, foreign_key: true
      t.references :post, foreign_key: true
      #t.references :subreddit, foreign_key: true
      t.timestamps
    end
  end
end
