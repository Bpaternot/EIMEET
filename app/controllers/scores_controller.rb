class ScoresController < ApplicationController
  include PoolRanking

  def new
  end

  def create

  end

  def update
    @score = Score.find(params[:id])
    authorize(@score)
    @score.update(score_params)

    @tournament = @score.game.tournament
    @list_all_players = generate_list_all_players(@tournament)

    if @tournament.step == "group"
      ranking_pool(@tournament)
      @players = classify(@list_all_players)
    end


    respond_to do |format|
      format.html { redirect_to tournament_playground_path(@score.game.tournament) }
      format.js
    end
  end

  def score_params
    params.require(:score).permit(:goals, :against_goals)
  end
end


