class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :language
      #t.integer :post_karma
      #t.integer :comment_karma
      #t.string :my_subreddits
      #t.date :cakeday
      t.timestamps
    end
  end
end
