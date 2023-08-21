class CreatePoissons < ActiveRecord::Migration[7.0]
  def change
    create_table :poissons do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
