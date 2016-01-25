class AddUserToBmarks < ActiveRecord::Migration
  def change
    add_column :bmarks, :user_id, :integer
    add_index :bmarks, :user_id
  end
end
