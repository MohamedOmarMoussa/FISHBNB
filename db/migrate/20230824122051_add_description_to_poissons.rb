class AddDescriptionToPoissons < ActiveRecord::Migration[7.0]
  def change
    add_column :poissons, :description, :string
  end
end
