class CatsController < ApplicationController
  before_action :set_cat, only: %i[show edit update destroy]
  before_action :set_color_array, :set_breed_array, only: %i[new create]
  before_action :set_color_update, :set_breed_update, only: %i[edit update]

  def index
    @q = Cat.ransack(params[:q])
   
    @cats = @q.result(distinct: true).page(params[:page])
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
      redirect_to @cat, notice: "Cat was successfully created." 
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

    def set_color_update
      @colors = CatColor.joins('FULL JOIN  cats ON cats.color = cat_colors.color')
      @colors_update = (@colors.all.map { |cat_color| cat_color.color }).uniq
    end

    def set_breed_update
      @breeds = CatBreed.joins('FULL JOIN  cats ON cats.breed = cat_breeds.breed')
      @breeds_update = (@breeds.all.map { |cat_breed| cat_breed.breed }).uniq
    end
end
