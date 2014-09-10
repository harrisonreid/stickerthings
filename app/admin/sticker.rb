ActiveAdmin.register Sticker do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  controller do
    def permitted_params
      params.permit :utf8, :_method, :authenticity_token, :commit, :id,
                sticker: [:title, :tag_list, :sticker, :sticker_preview]
    end
  end


  form do |f|
    f.inputs "Sticker", :multipart => true do
      f.input :title
      f.input :tag_list
      f.input :sticker_preview, :as => :file
      f.input :sticker, :as => :file
    end
    f.actions
  end

  index do
    column "Title", :title
    column "Tags", :tag_list
    column "Preview", :sticker_preview
    column "Sticker", :sticker
    actions
  end
 
  show do |ad|
      attributes_table do
        row :title
        row :tag_list
        row :sticker_preview do
          image_tag(ad.sticker_preview.url)
        end
        row :sticker do
          image_tag(ad.sticker.url)
        end
  end
end
end


