class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    find_food
  end

  def new
    @food = Food.new
  end

  def create
    # name = params[:name]
    # @customer = Customer.create(name: name)
    @food = Food.new(food_params)
    @food.save
    redirect_to food_path(@food)
  end

  def edit
    find_food
  end

  def update
    find_food
    @food.update(food_params)
    redirect_to food_path(@food)
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end
  
private

  def food_params
    params.require(:food).permit(:name, :description)
  end

  def find_food
    @food = Food.find(params[:id])
  end
end
