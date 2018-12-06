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
      @search_input = params[:q]
    end
  end

  def create
    @input = params[:q]
    input = @input.strip.downcase
    if /[^\d\.]/ =~ key
      @products = Product.where('description like ? or name like ?',
      %{%#{input}%},
      %{%#{input}%}
      )
    else
      @products = Product.where('description like ? or name like ? or price = ?',
      %{%#{input}%},
      %{%#{input}%},
      input)
    end
    # else
    #   @products = Product.order(:name)
    render :new
  end
end
