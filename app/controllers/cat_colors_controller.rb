class CatColorsController < ApplicationController
  def new
    @catcolor = CatColor.new
  end

  def create
    @catcolor = CatColor.new(cat_color_params)
    if @catcolor.save
      redirect_to new_cat_url
    else
      render :new
    end
  end

  def destroy
    @catcolor.destroy

    redirect_to edit_cat_url, notice: "Cat was successfully destroyed." 
  end

  private
  def cat_color_params
    params.require(:cat_color).permit(:color)
  end
end
