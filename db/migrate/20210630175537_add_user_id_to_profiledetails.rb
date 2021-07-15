class AddUserIdToProfiledetails < ActiveRecord::Migration[6.0]
  def change
    add_column :profiledetails, :user_id, :integer
    add_index :profiledetails, :user_id
  end
end
