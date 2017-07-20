class Account::MenusController < ApplicationController

  def index
    # Let's anticipate on next week (with login)
    @menus = current_user.menus.all
    @user = current_user
  end

  def show
    # Let's anticipate on next week (with login)
    @menu = current_user.menus.find(params[:id])
    @user = current_user
  end

  def edit
    @menu = current_user.menus.find(params[:id])
    @user = current_user
  end

  def update
    # Let's anticipate on next week (with login)
    @menu = current_user.menus.find(params[:id])
    @menu.update(set_params)
    @menu.save
    redirect_to account_menu_path(@menu.id)
  end

  private

  def set_params
    params.require(:menu).permit(:name, :guests, :description, :price)
  end
end
