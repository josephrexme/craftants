class WelcomeController < ApplicationController
  def index
  	@categories = Category.all.map { |category| [category.name, category.name] }
  	@locations = Location.all.map { |location| [location.city, location.city] }
  	@user = User.new
  end

  def story
  end

  def search
  	artisan = params[:artisan]
  	location = params[:location]
  	@artisans = User.where(specialization: artisan, location: location)
  end
end
