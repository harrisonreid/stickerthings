class Sticker < ActiveRecord::Base
  has_attached_file :sticker
  validates_attachment_content_type :sticker, :content_type => "image/png"

  has_attached_file :sticker_preview, :styles => { :medium => "250x250"}
  validates_attachment_content_type :sticker_preview, :content_type => "image/png"

  acts_as_taggable

end
