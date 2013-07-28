class SessionsController < ApplicationController
  def create
    require 'pry-remote'; binding.pry_remote
  end

  def destory
  end
end
