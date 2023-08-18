class CardsController < ApplicationController
  def create
  	@card=Card.new(params.require(:card).permit(:product_name, :price))
  	if @card.save
         flash[:notice] = "card created successfully!!"
          redirect_to new_card_path
       else
         render 'new'
      end
  end
  def new
  	@card = Card.new
  end
end
