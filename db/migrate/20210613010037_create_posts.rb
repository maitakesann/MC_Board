class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :comment
      t.integer :customer_id
      t.string :title

      t.timestamps
    end
  end
end
