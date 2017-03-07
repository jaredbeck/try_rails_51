class BananasController < ApplicationController
  def create
    Banana.create!(banana_params)
    redirect_to new_banana_path, notice: 'Banana created'
  end

  def new
    @banana = Banana.new
  end

  private

  def banana_params
    params.require(:banana).permit(:grams)
  end
end
