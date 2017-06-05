class ScoresController < ApplicationController
  def new
  end

  def create

  end

  def update
    @score = Score.find(params[:id])
    authorize(@score)
    @score.update(score_params)

    redirect_to tournament_playground_path(@score.game.tournament)
  end

  def score_params
    params.require(:score).permit(:goals, :against_goals)
  end
end


