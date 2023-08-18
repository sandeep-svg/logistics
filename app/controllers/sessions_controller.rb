class SessionsController < ApplicationController
  def new
  end
  def create
    customer = Customer.find_by(email: params[:session][:email])
    if customer && customer.authenticate(params[:session][:password])
    	session[:customer_id] = customer.id
      #log_in customer
      redirect_to shopping_cart_path
    else 
      flash[:danger]='    invalid credentials!!'
      render 'new'
    end 
  end
  def destroy
    #log_out
    session[:customer_id] = nil
    flash[:note1]='you have been logged out of the session!! '
    redirect_to login_path
  end
end
