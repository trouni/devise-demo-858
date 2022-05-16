class PagesController < ApplicationController
  skip_before_action :authenticate_user!#, only: :home

  def home
    @email = current_user.email if user_signed_in?
  end
end
