class GamesController < ApplicationController
  include PoolRanking

  def new
  end

  def create
  end

  def update_scores
    @game = Game.find(params[:id])
    authorize(@game)
    score_1 = @game.scores.find(params[:score_1][:id])
    score_1.update({goals: params[:score_1][:goals]})
    score_2 = @game.scores.find(params[:score_2][:id])
    score_2.update({goals: params[:score_2][:goals]})


    @tournament = @game.tournament
    @list_all_players = generate_list_all_players(@tournament)

    if @tournament.step == "group"
      ranking_pool(@tournament)
      @players = classify(@list_all_players)
      @players.map! { |pool| pool.map! { |player| player.reload } }
    end


    respond_to do |format|
      format.html { redirect_to tournament_playground_path(@game.tournament) }
      format.js
    end

  end

  private
end
