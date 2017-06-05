class TournamentsController < ApplicationController
  before_action :set_tournament, only: [ :show, :edit, :update, :destroy]

  def index
    policy_scope(Tournament)
    @address = params[:tournament_address]

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

    if current_user.token != nil
      @graph = Koala::Facebook::API.new(current_user.token)
      profile = @graph.get_object("me")
      @friends = @graph.get_connections("me", "friends")
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
    @current_player = Player.where(tournament: @tournament, user: current_user).first
    if current_user.token != nil
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
    if @tournament.save
      redirect_to root_path
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
    if @tournament.step == "group" && @tournament.games == []
      if @tournament.tournament_type == "small"
        array = [1, 2, 3, 4, 5, 6, 7, 8].shuffle
        spot = 0
        @tournament.players.each do |player|
          player.pool_index = array[spot]
          player.save!
          spot += 1
        end
      elsif @tournament.tournament_type == "medium"
      elsif @tournament.tournament_type == "large"
      end
    end
    @list_all_players = []
    [1, 2, 3, 4, 5, 6, 7, 8].each do |index|
      @list_all_players << @tournament.players.find_by(pool_index: index)
    end
    @list_all_players = @list_all_players.each_slice(4).to_a
    @games = @tournament.games
    @group_games = @games.where(step: "group").order(:name).each_slice(6).to_a
    step_update
    ranking_pool
  end

  def step_update
    if @tournament.step == "group" && @tournament.games == []
      @list_all_players = []
      [1, 2, 3, 4, 5, 6, 7, 8].each do |index|
        @list_all_players << @tournament.players.find_by(pool_index: index)
      end
      @list_all_players = @list_all_players.each_slice(4).to_a
      generate_pools(@tournament, @list_all_players)

    elsif @tournament.step == "round16"
      # method pour générer huitièmes
    elsif @tournament.step == "quarter"
      # method pour générer
    elsif @tournament.step == "semi"
      # method pour générer semi
    elsif @tournament.step == "final"
      #method pour générer final
    end
  end


  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
    authorize(@tournament)
  end

  def tournament_params
    params.require(:tournament).permit(:bar, :date, :status, :tournament_type, :number_players, :number_consoles, :number_games)
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

    # tournaments = []
    # bars.each do |bar|
    #   tournaments << bar.tournaments
    # end
    # tournaments.flatten!
  end

  def generate_pools(tournament, list_all_players)
    generate_pool_games(list_all_players[0], tournament, "A")
    generate_pool_games(list_all_players[1], tournament, "B")
    if @tournament.tournament_type == "medium" || @tournament.tournament_type == "large"
      generate_pool_games(list_all_players[2], tournament, "C")
      generate_pool_games(list_all_players[3], tournament, "D")
      if @tournament.tournament_type == "large"
        generate_pool_games(list_all_players[4], tournament, "E")
        generate_pool_games(list_all_players[5], tournament, "F")
        generate_pool_games(list_all_players[6], tournament, "G")
        generate_pool_games(list_all_players[7], tournament, "H")
      end
    end

    # ranking_by_pool(players_poolA)
  end

  def generate_pool_games(players_pool, tournament, name)
    generate_pool_game(tournament, players_pool[0], players_pool[1], name)
    generate_pool_game(tournament, players_pool[2], players_pool[3], name)
    generate_pool_game(tournament, players_pool[0], players_pool[2], name)
    generate_pool_game(tournament, players_pool[1], players_pool[3], name)
    generate_pool_game(tournament, players_pool[0], players_pool[3], name)
    generate_pool_game(tournament, players_pool[1], players_pool[2], name)
  end

  def generate_pool_game(tournament, player1, player2, name)
    game = Game.create!(tournament: tournament, step: "group", name: name)
    [player1, player2].each do |player|
      score = Score.new
      score.game = game
      score.player = player
      score.save
    end
  end


  def ranking_pool
    pools = @tournament.games.where(step: "group").order(:name).each_slice(6).to_a
    pools.each do |pool|
      players = pool.map do |game|
        game.scores.map do |score|
          score.player
        end.flatten
      end.flatten.uniq
      players.each do |player|
        player.points = 0
        player.bp = 0
        player.bc = 0
        player.diff = 0

        participated_games = pool.select do |game|
          game.players.include? player
        end
        participated_games.each do |game|
          score_me = game.scores.where(player: player).first
          score_other = game.scores.where.not(player: player).first
          my_goals = score_me.goals || 0
          other_goals = score_other.goals || 0

          has_won = my_goals > other_goals
          has_equality = my_goals == other_goals
          if has_won
            player.points += 3
          elsif has_equality
            player.points += 1
          else
            player.points += 0
          end
          player.bp += my_goals
          player.bc += other_goals
          player.diff += my_goals - other_goals
        end
        player.save!
      end
    end
  end

end


