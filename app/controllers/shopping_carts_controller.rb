class ShoppingCartsController < ApplicationController
  def add
	customer = Customer.find(session[:customer_id])
	customer.create_shopping_cart if customer.shopping_cart.nil?
	customer.shopping_cart&.cards << Card.find(params[:card_id])
	redirect_to shopping_cart_path
  end

  def remove
    customer = Customer.find(session[:customer_id])
	a = customer.shopping_cart.cards.pluck(:id)
	a.delete_at(a.index params[:card_id].to_i)
	customer.shopping_cart.cards = []
	shopping_cart_id = customer.shopping_cart.id
	a.map {|ele| ActiveRecord::Base.connection.execute("insert into cards_shopping_carts (shopping_cart_id,card_id) values (#{shopping_cart_id},#{ele})") }
	redirect_to shopping_cart_path
  end

  def clear
  	customer = Customer.find(session[:customer_id])
  	customer.shopping_cart.cards = []
  	redirect_to shopping_cart_path
  end
end
