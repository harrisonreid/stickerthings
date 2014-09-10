class AddColumnsToStickers < ActiveRecord::Migration
  def change
    add_column :stickers, :title, :string
    add_column :stickers, :tag_list, :string
    add_attachment :stickers, :sticker
  end
end
