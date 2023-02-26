class CatsController < ApplicationController
  before_action :set_cat, only: %i[show edit update destroy]
  before_action :set_color_array, only: %i[new]
  before_action :set_breed_array, only: %i[new]

  def index
    @q = Cat.ransack(params[:q])
   
    @cats = @q.result.page(params[:page])
  end

  def show
  end

  def new
    @cat = Cat.new
  end

  def edit
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to @cat
    else
      render :new
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to @cat, notice: "Cat was successfully updated." 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @cat.destroy

    redirect_to cats_url, notice: "Cat was successfully destroyed." 
  end

  private
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      params.require(:cat).permit(:name, :color, :breed)
    end

    def set_color_array
      @colors = CatColor.all.map { |cat_color| cat_color.color }
    end

    def set_breed_array
      @breeds = CatBreed.all.map { |cat_breed| cat_breed.breed }
    end
end
