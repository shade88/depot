class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def index
    session[:counter]||=0
    session[:counter]+=1
    @products = Product.order(:title)
  end
end
