class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def rankings
    User.find_each do |user|
      user.rankings
    end
    # @users = User.all.sort_by { |user| user.total_goals }
    if params[:sort_by] == "total-against-goals"
       @users = User.order(total_against_goals: :desc)
    elsif params[:sort_by] == "won-tournaments"
      @users = User.order(won_tournaments: :desc)
    else
      @users = User.order(total_goals: :desc)
    end
  end
end
