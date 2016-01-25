class CreateBmarks < ActiveRecord::Migration
  def change
    create_table :bmarks do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
