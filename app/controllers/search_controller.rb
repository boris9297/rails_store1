class SearchController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  # def index
  #   @products = Product.order(:name)
  # end

  def new
    @products = Product.order(:name)
    if params[:q].present?
      @input = params[:q]
    end
  end

  def create
    @input = params[:q]

    input = @input.strip.downcase
    @products = Product.where('description like ? or name like ? or price = ?',
    %{%#{input}%},
    %{%#{input}%},
    input)
    # else
    #   @products = Product.order(:name)
    render :new
  end
end
