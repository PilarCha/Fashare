class ClothController < ApplicationController
  def index
    @AllClothes = Cloth.take(4)
    @Recent = Cloth.all.order(created_at: :desc)
  end

  def show
    @Item = Cloth.find(params[:id])
  end

  def search
    @Results = Cloth.search(params[:term])
    @term = params[:term]
  end

  def create
  end

  def createCloth
    newCloth = Cloth.new(cloth_params)
    if newCloth.save
      flash[:notice] = "Thank You for adding a new Item"
      redirect_to :index
    else
      flash[:alert] = cloth.errors/full_messages
      redirect_to :back
    end
  end

  private
    def cloth_params
      params.require(:cloth).permit(:apparel, :gender, :price, :size, :imagelink)
    end

end
