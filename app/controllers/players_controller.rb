class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update ]

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
    @player.ps4 = params[:player][:ps4]
    @player.controller_ps4 = params[:player][:controller_ps4]
    @player.fifa_game_ps4 = params[:player][:fifa_game_ps4]
    @player.tournament = @tournament
    @player.user = current_user
    @player.admin = false
    @player.save!
    redirect_to tournament_path(@tournament), notice: "You are now registered for the tournament!"
  end

  def edit
  end

  def update
    @player.update(player_params)
    @tournament = Tournament.find(params[:tournament_id])
    redirect_to tournament_path(@tournament)

  def destroy
    @current_player = Player.find(params[:id])
    @tournament = Tournament.find(params[:tournament_id])
    @current_player.destroy
    redirect_to tournament_path(@tournament), notice: "You are now unregistered!"
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:tournament, :ps4, :controller_ps4, :fifa_game_ps4,)
  end
end

