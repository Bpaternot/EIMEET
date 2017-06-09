module PoolRanking

  def update_ranking(game)
    game.players.each do |player|
      player.points = 0
      player.bp = 0
      player.bc = 0
      player.diff = 0

      pools = tournament.games.find_by(step: "group").order(:name).each_slice(6).to_a
      participated_games = pool.select do |game|
        game.players.include? player
      end
      participated_games.each do |game|
        score_me = game.scores.where(player: player).first
        score_other = game.scores.where.not(player: player).first
        my_goals = score_me.goals unless score_me.goals.nil?
        other_goals = score_other.goals unless score_other.goals.nil?

        unless my_goals.nil?
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
      end
      player.save!
    end
  end

  def ranking_pool(tournament)
    pools = tournament.games.where(step: "group").order(:name).each_slice(6).to_a
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
          my_goals = score_me.goals unless score_me.goals.nil?
          other_goals = score_other.goals unless score_other.goals.nil?

          unless my_goals.nil?
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
        end
        player.save!
      end
    end
  end

  def classify(players)
    list = []
    players.each_with_index do |pool, index|
      pool = pool.sort_by { |player| -player.bc }
      pool = pool.sort_by { |player| -player.bp }
      pool = pool.sort_by { |player| -player.diff }
      pool = pool.sort_by { |player| -player.points }
      list << pool
    end
    return list
  end


def generate_list_all_players(tournament)
    if tournament.step == "group" && tournament.games == []
      if tournament.tournament_type == "small"
        array = [1, 2, 3, 4, 5, 6, 7, 8].shuffle
        spot = 0
        tournament.players.each do |player|
          player.pool_index = array[spot]
          player.save!
          spot += 1
        end
      elsif tournament.tournament_type == "medium"
        array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16].shuffle
        spot = 0
        tournament.players.each do |player|
          player.pool_index = array[spot]
          player.save!
          spot += 1
        end
      elsif tournament.tournament_type == "large"
        array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32].shuffle
        spot = 0
        tournament.players.each do |player|
          player.pool_index = array[spot]
          player.save!
          spot += 1
        end
      end
    end
    if tournament.tournament_type == "small"
      list_all_players = []
      [1, 2, 3, 4, 5, 6, 7, 8].each do |index|
        list_all_players << tournament.players.find_by(pool_index: index)
      end
      list_all_players = list_all_players.each_slice(4).to_a
    end
    if tournament.tournament_type == "medium"
      list_all_players = []
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16].each do |index|
        list_all_players << tournament.players.find_by(pool_index: index)
      end
      list_all_players = list_all_players.each_slice(4).to_a
    end
    if tournament.tournament_type == "large"
      list_all_players = []
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32].each do |index|
        list_all_players << tournament.players.find_by(pool_index: index)
      end
      list_all_players = list_all_players.each_slice(4).to_a
    end
    return list_all_players
  end
end
