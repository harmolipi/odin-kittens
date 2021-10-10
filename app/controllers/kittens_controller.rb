class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(kitten_params[:id])
  end

  private

  def kitten_params
    params.permit(:id, :name, :age, :cuteness, :softness)
  end
end
