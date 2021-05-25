class ReviewsChangeColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :doctor_id_id, :doctor_id
    rename_column :reviews, :user_id_id, :user_id
  end
end
