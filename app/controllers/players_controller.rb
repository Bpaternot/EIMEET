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
        if @tournament.number_players > @tournament.players.count && Player.where(tournament: @tournament, user: current_user) == nil
          @player.tournament = @tournament
          @player.user = current_user
          @player.admin = false
          @player.save!
          redirect_to tournament_path(@tournament), notice: "You are now registered for the tournament!"
        else
          redirect_to tournament_path(@tournament), alert: "This tournament is full or you are already registered in the tournament"
        end
  end


  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:tournament)
  end
end

