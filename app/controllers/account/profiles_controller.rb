class Account::ProfilesController < ApplicationController
  def show
    # Let's anticipate on next week (with login)
    @user = current_user
  end
end
