class AddImageToRosters < ActiveRecord::Migration
  def up 
    add_column :rosters, :image_url, :string
  end

  def down 
    remove_column :rosters, :image_url
  end
end
