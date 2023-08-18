class AddListIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :lists, column: :id
  end
end
