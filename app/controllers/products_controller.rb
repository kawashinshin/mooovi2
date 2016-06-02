class ProductsController < RankingController

  def index
    @products = Product.order("created_at DESC").limit(20)
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def search
    @products =Product.where("title like '%#{params[:keyword]}%'")
  end
end
