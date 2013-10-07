class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end
  def index
    @pictures = Picture.all
  end
  def edit 
    @picture = Picture.find_by_id(params[:id])
  end
  def create
 # 	debugger
  	@picture = Picture.new(params[:picture])
  	@picture.save
  	redirect_to pictures_path
  end  
  def destroy
    @picture = Picture.find_by_id(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end
end
