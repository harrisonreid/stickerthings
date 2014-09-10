class AddPreviewImageColumnToStickers < ActiveRecord::Migration
  def change
    add_attachment :stickers, :sticker_preview
  end
end
