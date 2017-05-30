class TournamentsController < ApplicationController

  before_action :set_tournament, only: [ :show, :edit, :update, :destroy ]

  def index
    @tournaments = Tournament.all
  end

  def show
  end

  def new
    @tournament = Tournament.new()
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.user = current_user
    @tournament.bar = Bar.find(params[:bar_id])
    @tournament.save!
    # if @tournament.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
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
    params.require(:tournament).permit(:bar, :date, :status, :tournament_type)
  end
end
