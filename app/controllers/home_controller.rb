class HomeController < ApplicationController

  def index
    Rails.logger.debug("My object: #{current_user.inspect}")
    Rails.logger.debug("Turnos del usuario: #{current_user.turns}")
    @users = User.all
    @resources = Resource.all
    # @turns = Turn.all
    @turns = current_user.turns
  end

  def index_admin
    @users = User.all
    @resources = Resource.all
  end
end
