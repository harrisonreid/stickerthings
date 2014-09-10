class StickersController < ApplicationController

  def index
  	if params[:tag].blank?
    @stickers=Sticker.paginate(:page => params[:page], :per_page => 50)
    else
    @stickers=Sticker.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 50)
    end
  end

  def show
  	@sticker=Sticker.find_by_id(params[:id])
  end

  def categories
  	@tags = Sticker.tag_counts_on(:tags)
  	render 'categories'
  end

  def faq
  	render 'faq'
  end

end