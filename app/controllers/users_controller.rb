class UsersController < ApplicationController
  before_action :set_user, only: [ :dashboard, :edit, :update, :destroy ]

  def index
    policy_scope(User)
  end

  def dashboard
    @tournaments = []
    current_user.players.each do |player|
      @tournaments << player.tournament
    end
  end

  def set_user
    authorize(current_user)
  end


end
