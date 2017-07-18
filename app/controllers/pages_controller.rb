class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @menus = Menu.all
    @menu = Menu.new
    @categories = Category.all
    @numbers = (1..99)
  end
end
