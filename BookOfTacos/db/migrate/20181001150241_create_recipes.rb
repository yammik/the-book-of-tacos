class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.integer :like_count
      t.decimal :rating

      t.timestamps
    end
  end
end
