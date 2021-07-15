class CreateProfiledetails < ActiveRecord::Migration[6.0]
  def change
    create_table :profiledetails do |t|
      t.string :first_name
      t.string :last_name
      t.string :education
      t.string :experience
      t.binary :resume

      t.timestamps
    end
  end
end
