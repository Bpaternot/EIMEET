class TournamentsController < ApplicationController

  before_action :set_tournament, only: [ :show, :edit, :update, :destroy ]

  def index
    @tournaments = Tournament.all
  end

  def show
  end

  def new
    @tournament = Tournament.new()
    @bar = Bar.find(params[:bar_id])
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.user = current_user
    @tournament.bar = Bar.find(params[:bar_id])
    if @tournament.tournament_type = "small"
      @tournament.number_players = 8
      @tournament.number_consoles = 2
      @tournament.number_games = 15
    elsif @tournament.tournament_type = "medium"
      @tournament.number_players = 16
      @tournament.number_consoles = 4
      @tournament.number_games = 31
    elsif @tournament.tournament_type = "large"
      @tournament.number_players = 32
      @tournament.number_consoles = 8
      @tournament.number_games = 63
    end
    if @tournament.save
      redirect_to tournament_path(@tournament)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tournament.update(tournament_params)
    if @tournament.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @tournament.destroy
    redirect_to root_path
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end

  def tournament_params
    params.require(:tournament).permit(:bar, :date, :status, :tournament_type, :number_players, :number_consoles, :number_games)
  end
end
