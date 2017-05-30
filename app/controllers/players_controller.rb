class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy ]

  def index
    @players = Player.all
  end

  def show
  end

  def new
  end

  def create
    @player = Player.new()
    @tournament = Tournament.find(params[:tournament_id])
    @player.tournament = @tournament
    @player.user = current_user
    @player.save!
  end


  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:tournament)
  end
end

