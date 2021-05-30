class RemoveNameFromDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :name
  end
end
