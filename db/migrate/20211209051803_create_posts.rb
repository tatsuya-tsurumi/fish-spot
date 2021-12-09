class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :aimble_fish, null: false
      t.integer :time_zone, null: false
      t.string :trick
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
