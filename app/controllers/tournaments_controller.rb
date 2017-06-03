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
      @zoom = 13
    elsif @radius < 9
      @zoom = 11
    else
      @zoom = 9
    end

    # @tournaments = Tournament.all.joins(:bar).where("bars.latitude IS NOT NULL and bars.longitude IS NOT NULL")
    @hash = Gmaps4rails.build_markers(@tournaments) do |tournament, marker|
      marker.lat tournament.bar.latitude
      marker.lng tournament.bar.longitude
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

    # trouver le tournois en question
    # @tournament = Tournament.find(params[:id])
    # placer les joueurs par pool

    # générer matches de pool


    # récuperer les scores des joueurs pour chaque match
    # updater le ranking des joueurs à la fin de chaque match = methode update de player puis updater ranking
    # passer à la step suivante du tournois: generer des games dont la step est diff de la précédente
  end

  def step_update
    # TODO
    # update step and check if step is already done
    # generate games
    if step == "group"
      generate_pools(@tournament)
    elsif step == "round16"
      # method pour générer huitièmes
    elsif step == "quarter"
      # method pour générer quarter
    elsif step == "semi"
      # method pour générer semi
    elsif step == "semi"
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

  def generate_pools(tournament)
    list_all_players = tournament.players.shuffle.each_slice(4).to_a
    # player_pool_A return an array of the players in the pool A
    players_poolA = list_all_players[0]
    players_poolB = list_all_players[1]
    players_poolC = list_all_players[2]
    players_poolD = list_all_players[3]
    # generate the pool games
    generate_pool_games(players_pool_A, tournament)
    generate_pool_games(players_pool_B, tournament)
    if @tournament.tournament_type == "medium" || @tournament.tournament_type == "large"
      generate_pool_games(players_pool_C, tournament)
      generate_pool_games(players_pool_D, tournament)
      if @tournament.tournament_type == "large"
        generate_pool_games(players_pool_E, tournament)
        generate_pool_games(players_pool_F, tournament)
        generate_pool_games(players_pool_G, tournament)
        generate_pool_games(players_pool_H, tournament)
      end
    end
    ranking_by_pool(players_poolA)
  end

  def generate_pool_games(players_pool, tournament)
    generate_pool_game(tournament, players_pool[0], players_pool[1])
    generate_pool_game(tournament, players_pool[2], players_pool[3])
    generate_pool_game(tournament, players_pool[0], players_pool[2])
    generate_pool_game(tournament, players_pool[1], players_pool[3])
    generate_pool_game(tournament, players_pool[0], players_pool[3])
    generate_pool_game(tournament, players_pool[1], players_pool[2])
  end

  def generate_pool_game(tournament, player1, player2)
    game = Game.new(tournament: tournament, step: "group")
    game.save
    [player1, player2].each do |player|
      score = game.scores.build(player: player)
      score.save
    end
  end


  def ranking_by_pool
    ranking_player = {}
    players_poolA.each do |player|
      player.games.each do |game|
        game.scores.each do |score|
          if score.player == player
            ranking_player[player][points] += 3

          end
        end
      end
    end
  end

end


