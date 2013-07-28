class TopController < ApplicationController
  def show
    redirect_to reviews_path if logged_in?
  end
end
