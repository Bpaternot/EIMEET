class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update ]

  def show
  end

  def new
  end

  def create
    @player = Player.new()
    @tournament = Tournament.find(params[:tournament_id])
    if params[:player][:ps4].empty?
      @player.ps4 = false
    else
      @player.ps4 = params[:player][:ps4]
    end
    if params[:player][:controller_ps4].empty?
      @player.controller_ps4 = 0
    else
      @player.controller_ps4 = params[:player][:controller_ps4]
    end
    if params[:player][:fifa_game_ps4].empty?
      @player.fifa_game_ps4 = 0
    else
      @player.fifa_game_ps4 = params[:player][:fifa_game_ps4]
    end

    if params[:player][:club] == 'Choose your team'
      @player.club = nil
    else
      @player.club = params[:player][:club]
    end


    @player.tournament = @tournament
    @player.user = current_user
    @player.admin = false
    authorize(@player)
    if @player.save
      redirect_to tournament_path(@tournament), notice: "You are now registered for the tournament!"
    else
      redirect_to tournament_path(@tournament, modal: true), alert: "No registred, please choose a team !"
    end
  end

  def edit
  end

  def update
    authorize(@player)
    @player.update(player_params)
    @tournament = Tournament.find(params[:tournament_id])
    redirect_to tournament_path(@tournament), notice: "You updated!"
  end

  def destroy
    @current_player = Player.find(params[:id])
    @tournament = Tournament.find(params[:tournament_id])
    authorize(@current_player)
    @current_player.destroy
    redirect_to tournament_path(@tournament), notice: "You are now unregistered!"
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:tournament, :ps4, :controller_ps4, :fifa_game_ps4, :points, :bp, :bc, :diff, :club)
  end
end

