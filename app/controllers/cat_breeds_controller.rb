class CatBreedsController < ApplicationController
  def new
    @catbreed = CatBreed.new
  end

  def create
    @catbreed = CatBreed.new(cat_breed_params)
    if @catbreed.save
      redirect_to new_cat_url
    else
      render :new
    end
  end

  def destroy
    @catbreed.destroy

    redirect_to edit_cat_url, notice: "Cat was successfully destroyed."
  end

  private
  
  def cat_breed_params
    params.require(:cat_breed).permit(:breed)
  end
end
