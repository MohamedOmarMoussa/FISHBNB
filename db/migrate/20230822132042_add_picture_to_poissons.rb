class AddPictureToPoissons < ActiveRecord::Migration[7.0]
  def change
    add_column :poissons, :picture_url, :string
  end
end
