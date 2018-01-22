class HomeController < ApplicationController

  def index
    @users = User.all
    @resources = Resource.all
  end

  def index_admin
    @users = User.all
    @resources = Resource.all
  end
end
