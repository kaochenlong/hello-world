class PagesController < ApplicationController

  def home

  end


private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :website, :image)
  end
end
