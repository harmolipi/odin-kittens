class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]

  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: 'Kitten successfully created!'
    else
      flash.now[:alert] = 'Error! Please try creating kitten again.'
      render :new
    end
  end

  def edit
  end

  def update
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: 'Kitten successfully updated.'
    else
      flash.now[:alert] = 'Error! Please try editing kitten again.'
      render :edit
    end
  end

  def destroy
    @kitten.destroy
    redirect_to root_path, notice: 'Kitten was successfully deleted.'
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:id, :name, :age, :cuteness, :softness)
  end
end
