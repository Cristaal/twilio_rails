class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:success] = "Message was sent sent."
      redirect_to addresses_path
    else
      flash[:danger] = "There was a problem creating your contact, please try again."
      render[:new]
    end
  end

  private
    def address_params
      params.require(:address).permit(:name, :phone)
    end
  end
end
