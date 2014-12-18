class HomeController < ApplicationController
  
  def inde
    @sales = Sale.where(tday: Date.today)
  end
end
