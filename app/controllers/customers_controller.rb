class CustomersController < ApplicationController
	def index
	  @cards = Card.all
	  @cards_in_cart = Customer.find(session[:customer_id]).shopping_cart&.cards if session[:customer_id]
	end

	def create
      @customer=Customer.new(params.require(:customer).permit(:name, :email, :password, :password_confirmation))
      if @customer.save
         flash[:notice] = "Account created successfully!!"
          redirect_to login_path
       else
         render 'new'
      end
    end

    def new
      @customer=Customer.new
    end
end