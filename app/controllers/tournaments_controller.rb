class TournamentsController < ApplicationController
  before_action :set_tournament, only: [ :show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  include PoolRanking

  def index
    policy_scope(Tournament)
    if params[:tournament_address]
      if params[:tournament_address].empty?
        @address = 'Paris'
      else
         @address = params[:tournament_address]
      end
    end
    # @bars = Bar.near(@address, 5).select { |bar| bar.tournaments }
    @radius = 5
    @bars = list_bars(@address, @radius)

    if @bars
      @tournaments = list_tournaments(@bars)
    else
      @tournaments = []
    end

    unless @tournaments.length >= 1
      @radius += 1
      @bars = list_bars(@address, @radius)
      @tournaments = list_tournaments(@bars)
    end

    if @radius < 6
      @zoom = 14
    elsif @radius < 4
      @zoom = 12
    else
      @zoom = 10
    end

    # @tournaments = Tournament.all.joins(:bar).where("bars.latitude IS NOT NULL and bars.longitude IS NOT NULL")
    @hash = Gmaps4rails.build_markers(@tournaments) do |tournament, marker|
      marker.lat tournament.bar.latitude
      marker.lng tournament.bar.longitude
      marker.json({id: tournament.bar.id})
      marker.picture({
        url: ActionController::Base.helpers.image_path('footballball.png'),
        width:  50,
        height: 50
      })
      # marker.infowindow render_to_string(partial: "/tournaments/map_box", locals: { tournament: tournament })
    end

    if current_user
      if current_user.token != nil
        @graph = Koala::Facebook::API.new(current_user.token)
        profile = @graph.get_object("me")
        @friends = @graph.get_connections("me", "friends")
      end
    end

  end

  def show
    @player = Player.new()
    @tournament = (Tournament.joins(:bar).where("bars.latitude IS NOT NULL and bars.longitude IS NOT NULL")).find(params[:id])
    @hash = Gmaps4rails.build_markers(@tournament) do |tournament, marker|
      marker.lat tournament.bar.latitude
      marker.lng tournament.bar.longitude
      # marker.infowindow render_to_string(partial: "/tournaments/map_box", locals: { tournament: tournament })
    end
    @remaining = @tournament.number_players - @tournament.players.count
    @remaining_console_ps4 = remaining_consoles(@tournament)
    @remaining_controllers = remaining_controllers(@tournament)
    @remaining_fifa_game = remaining_fifa_game(@tournament)
    @remaining_total = @remaining_console_ps4 + @remaining_controllers + @remaining_fifa_game
    @current_player = Player.where(tournament: @tournament, user: current_user).first
    if current_user && current_user.token != nil
      @graph = Koala::Facebook::API.new(current_user.token)
      profile = @graph.get_object("me")
      @friends = @graph.get_connections("me", "friends")
    end
    @review = Review.new()
  end

  def new
    @tournament = Tournament.new()
    @bar = Bar.find(params[:bar_id])
    authorize(@tournament)
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.user = current_user
    @tournament.step = "group"
    @tournament.bar = Bar.find(params[:bar_id])
    add_params(@tournament)
    authorize(@tournament)
    if @tournament.save
      init_player(@player, @tournament)
      redirect_to tournament_path(@tournament)
    else
      render :new
    end
  end

  def update
    @tournament.update(tournament_params)
    @list_all_players = generate_list_all_players(@tournament)
    if @tournament.save
      if @tournament.step == "group" && @tournament.games == []
        generate_pools(@tournament, @list_all_players)
        redirect_to tournament_playground_path(@tournament)
      elsif @tournament.step == "round16" && @tournament.games.where(step: "round16").order(:name) == []
        raise
        ranking_pool(@tournament)
        @winners_pool = classify_pool(@list_all_players)
        generate_round16(@tournament, @winners_pool)
        redirect_to tournament_playground_path(@tournament)
      elsif @tournament.step == "quarter" && @tournament.games.where(step: "quarter").order(:name) == []
        if @tournament.tournament_type == "large"
          @group_games_round16 = @tournament.games.where(step: "round16").order(:name)
          @winners_round16 = classify_after_pool(@group_games_round16)
          generate_quarter(@tournament, @winners_round16)
          redirect_to tournament_playground_path(@tournament)
        elsif @tournament.tournament_type == "medium"
          ranking_pool(@tournament)
          @winners_pool = classify_pool(@list_all_players)
          generate_quarter(@tournament, @winners_pool)
          redirect_to tournament_playground_path(@tournament)
        end
      elsif @tournament.step == "semi" && @tournament.games.where(step: "semi").order(:name) == []
        if @tournament.tournament_type == "small"
          ranking_pool(@tournament)
          @winners_pool = classify_pool(@list_all_players)
          generate_semi(@tournament, @winners_pool)
          redirect_to tournament_playground_path(@tournament)
        elsif
          @group_games_quarter = @tournament.games.where(step: "quarter").order(:name)
          @winners_quarter = classify_after_pool(@group_games_quarter)
          generate_semi(@tournament, @winners_quarter)
          redirect_to tournament_playground_path(@tournament)
        end
      elsif @tournament.step == "final" && @tournament.games.where(step: "final").order(:name) == []
        @group_games_semi = @tournament.games.where(step: "semi").order(:name)
        @winners_semi = classify_after_pool(@group_games_semi)
        generate_final(@tournament, @winners_semi)
        redirect_to tournament_playground_path(@tournament)
      else
        redirect_to tournament_playground_path(@tournament)
      end
    else
      render :new
    end
  end

  def destroy
    @tournament.destroy
    redirect_to tournaments_path
  end

  def playground
    @tournament = Tournament.find(params[:tournament_id])
    authorize(@tournament)
    @list_all_players = generate_list_all_players(@tournament)
    @games = @tournament.games

    if @tournament.step == "group"
      ranking_pool(@tournament)
    end
    @players = classify(@list_all_players)

    @group_games_pool = @games.where(step: "group").order(:name).each_slice(6).to_a

    @group_games_round16 = @games.where(step: "round16").order(:name)
    @group_games_quarter = @games.where(step: "quarter").order(:name)
    @group_games_semi = @games.where(step: "semi").order(:name)
    @group_games_final = @games.where(step: "final").order(:name)

    if @tournament.step == "round16"
      @winners_round16 = classify_after_pool(@group_games_round16)
    elsif @tournament.step == "quarter"
      @winners_quarter = classify_after_pool(@group_games_quarter)
    elsif @tournament.step == "semi"
      @winners_semi = classify_after_pool(@group_games_semi)
    else
      @winner = classify_after_pool(@group_games_final)[0]
    end

  end


  private


  def set_tournament
    @tournament = Tournament.find(params[:id])
    authorize(@tournament)
  end

  def tournament_params
    params.require(:tournament).permit(:bar, :date, :status, :tournament_type, :number_players, :number_consoles, :number_games, :step)
  end

  def add_params(tournament)
    if tournament.tournament_type == "small"
      tournament.number_players = 8
      tournament.number_consoles = 2
      tournament.number_controllers = 4
      tournament.number_games = 2
    elsif tournament.tournament_type == "medium"
      tournament.number_players = 16
      tournament.number_consoles = 4
      tournament.number_controllers = 8
      tournament.number_games = 4
    elsif tournament.tournament_type == "large"
      tournament.number_players = 32
      tournament.number_consoles = 8
      tournament.number_controllers = 16
      tournament.number_games = 8
    end
  end

  def remaining_consoles(tournament)
   consoles_ps4 = 0
    tournament.players.each do |player|
      if player.ps4 == true
        consoles_ps4 += 1
      end
    end
    if consoles_ps4 > tournament.number_consoles
      return 0
    else
      return (tournament.number_consoles - consoles_ps4)
    end
  end

  def remaining_controllers(tournament)
    controllers = 0
    tournament.players.each do |player|
      controllers += player.controller_ps4
    end
    if controllers > tournament.number_controllers
      return 0
    else
      return (tournament.number_controllers - controllers)
    end
  end

  def remaining_fifa_game(tournament)
  fifa_game = 0
    tournament.players.each do |player|
      fifa_game += player.fifa_game_ps4
    end
    if fifa_game > tournament.number_games
      return 0
    else
      return (tournament.number_games - fifa_game)
    end
  end

  def init_player(player, tournament)
    player = Player.new()
    player.user = current_user
    player.tournament = tournament
    player.admin = true
    player.ps4 = false
    player.controller_ps4 = 0
    player.fifa_game_ps4 = 0
    player.save!
  end

  def list_bars(address, radius)
    if address
      bars = Bar.near(address, radius)
    else
      bars = Bar.all
    end

    if params[:players]
      bars = bars.where(tournament_size: params[:players])
    end

    bars
  end

  def list_tournaments(bars)
    bars.map do |bar|
      if params[:date].blank?
        bar.tournaments
      else
        bar.tournaments.where(date: params[:date])
      end
    end.flatten
  end

  def generate_pools(tournament, list_all_players)
    generate_pool_games(list_all_players[0], tournament, "A")
    generate_pool_games(list_all_players[1], tournament, "B")
    if tournament.tournament_type == "medium" || tournament.tournament_type == "large"
      generate_pool_games(list_all_players[2], tournament, "C")
      generate_pool_games(list_all_players[3], tournament, "D")
      if tournament.tournament_type == "large"
        generate_pool_games(list_all_players[4], tournament, "E")
        generate_pool_games(list_all_players[5], tournament, "F")
        generate_pool_games(list_all_players[6], tournament, "G")
        generate_pool_games(list_all_players[7], tournament, "H")
      end
    end
  end

  def generate_pool_games(players_pool, tournament, name)
    generate_game(tournament, players_pool[0], players_pool[1], name, "group")
    generate_game(tournament, players_pool[2], players_pool[3], name, "group")
    generate_game(tournament, players_pool[0], players_pool[2], name, "group")
    generate_game(tournament, players_pool[1], players_pool[3], name, "group")
    generate_game(tournament, players_pool[0], players_pool[3], name, "group")
    generate_game(tournament, players_pool[1], players_pool[2], name, "group")
  end

  def generate_game(tournament, player1, player2, name, step)
    game = Game.create!(tournament: tournament, step: step, name: name)
    [player1, player2].each do |player|
      score = Score.new
      score.game = game
      score.player = player
      score.save
    end
  end


  def classify_pool(list_all_players)
    list = []
    letter = "A"
      list_all_players.each_with_index do |pool, index|
        pool = pool.sort_by { |player| -player.bc }
        pool = pool.sort_by { |player| -player.bp }
        pool = pool.sort_by { |player| -player.diff }
        pool = pool.sort_by { |player| -player.points }
        list << pool[0..1]
        player1 = list[index][0]
        player2 = list[index][1]
        player1.position = "#{letter}1"
        player2.position = "#{letter}2"
        player1.save!
        player2.save!
        letter.next!
      end
      return list
    end

    def generate_round16(tournament, list_players)
      generate_game(tournament, list_players[0][0], list_players[1][1], "HU1", "round16" )
      generate_game(tournament, list_players[0][1], list_players[1][0], "HU2", "round16" )
      generate_game(tournament, list_players[2][0], list_players[3][1], "HU3", "round16" )
      generate_game(tournament, list_players[2][1], list_players[3][0], "HU4", "round16" )
      generate_game(tournament, list_players[4][0], list_players[5][1], "HU5", "round16" )
      generate_game(tournament, list_players[4][1], list_players[5][0], "HU6", "round16" )
      generate_game(tournament, list_players[6][0], list_players[7][1], "HU7", "round16" )
      generate_game(tournament, list_players[6][1], list_players[7][0], "HU8", "round16" )
    end

    def classify_after_pool(group_games)
      list = []
      group_games.each do |game|
        if game.scores.first.goals > game.scores.last.goals
          winner_game = game.scores.first.player
          if game.name != "final"
            winner_game.position = game.name
          else
            raise
            winner_game.position = "W"
            winner_game.user.won_tournaments += 1
            winner_game.user.save
          end
        else
          winner_game = game.scores.last.player
          if game.name != "final"
            winner_game.position = game.name
          else
            raise
            winner_game.position = "W"
            winner_game.user.won_tournaments += 1
            winner_game.user.save
          end
        end
        list << winner_game
      end
      return list
    end

    def generate_quarter(tournament, list_players)
      if tournament.tournament_type == "large"
        generate_game(tournament, list_players[0], list_players[3], "Q1", "quarter" )
        generate_game(tournament, list_players[1], list_players[2], "Q2", "quarter" )
        generate_game(tournament, list_players[4], list_players[7], "Q3", "quarter" )
        generate_game(tournament, list_players[5], list_players[6], "Q4", "quarter" )
      else
        generate_game(tournament, list_players[0][0], list_players[1][1], "Q1", "quarter" )
        generate_game(tournament, list_players[0][1], list_players[1][0], "Q2", "quarter" )
        generate_game(tournament, list_players[2][0], list_players[3][1], "Q3", "quarter" )
        generate_game(tournament, list_players[2][1], list_players[3][0], "Q4", "quarter" )
      end
    end


    def generate_semi(tournament, list_players)
      if tournament.tournament_type == "small"
        generate_game(tournament, list_players[0][0], list_players[1][1], "S1", "semi" )
        generate_game(tournament, list_players[0][1], list_players[1][0], "S2", "semi" )
      else
        generate_game(tournament, list_players[0], list_players[3], "S1", "semi" )
        generate_game(tournament, list_players[1], list_players[2], "S2", "semi" )
      end
    end

    def generate_final(tournament, list_players)
      generate_game(tournament, list_players[0], list_players[1], "W", "final" )
    end
end
