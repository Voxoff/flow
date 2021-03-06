class PagesController < ApplicationController
  include CartControllable
  before_action :get_cart
  def home
    @user = current_or_guest_user
    @products = Product.all
    @cart_item = CartItem.new
  end

  def about
  end

  def education
  end

  def privacy_policy
  end

  private

  def checkout_params
    params.permit(:resource_path)
  end
end
