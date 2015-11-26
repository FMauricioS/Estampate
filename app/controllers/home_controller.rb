class HomeController < ApplicationController
  def index
    @shirts = Shirt.order("RANDOM()").limit(2)
  end
end
