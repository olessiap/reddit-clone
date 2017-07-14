class UpdateTypeColumnInPostAndComment < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :type, :post_type
    rename_column :comments, :type, :comment_type
  end
end
