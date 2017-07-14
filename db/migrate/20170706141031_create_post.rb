class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :type  #link or text, photo, vid, gif
      t.string :body

      t.references :user, foreign_key: true
      #t.references :subreddit, foreign_key: true
      #t.references :comments, foreign_key: true

      t.timestamps
    end
  end
end
