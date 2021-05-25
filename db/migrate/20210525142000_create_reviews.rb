class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :doctor_rating
      t.text :doctor_comments
      t.integer :doctor_office_rating
      t.text :doctor_office_comments
      t.references :doctor_id
      t.references :user_id

      t.timestamps
    end
  end
end
