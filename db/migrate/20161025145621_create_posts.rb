class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :role
      t.text :description
      t.string :sex
      t.string :location

      t.timestamps
    end
  end
end
