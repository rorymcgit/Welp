class RemoveCommentFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :comment, :text
  end
end
