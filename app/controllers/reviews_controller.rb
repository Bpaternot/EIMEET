class ReviewsController < ApplicationController

  def index
  end

  def create
    @tournament = Tournament.find(params[:tournament_id])
    @review = Review.new(review_params)
    @review.tournament = @tournament
    @review.player = Player.where(user: current_user, tournament: @tournament).first
    authorize(@review)
    if @review.save
      respond_to do |format|
        format.html { redirect_to tournament_path(@tournament) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'tournaments/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
