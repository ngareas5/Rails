class AddCommentorToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :commentor, :string
  end
end
