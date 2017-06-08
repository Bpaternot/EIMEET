require 'koala'


class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, presence: true
  has_many :tournaments, dependent: :destroy
  has_many :players, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)


    user_params[:username] = "#{user_params[:first_name]}#{user_params[:last_name]}"
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    @graph = Koala::Facebook::API.new(user.token)
    profile = @graph.get_object("me")
    @friends = @graph.get_connections("me", "friends")
    return user
  end

  # def self.koala(auth)
  #   access_token = auth['token']
  #   facebook = Koala::Facebook::API.new(access_token)
  #   facebook.get_object("me?fields=name,picture")
  # end



  # def rankings
  #   raise
  #   self.total_goals = 0
  #   if self.players.any?
  #     self.players.each do |player|
  #       if player.scores.any?
  #        player.scores.each do |score|
  #         self.total_goals ||= 0
  #         self.total_goals += score.goals
  #        end
  #       end
  #     end
  #   end
  #   self.save!
  # end


  def rankings
    self.total_against_goals = 0
    if self.players != []
      self.players.each do |player|
        if player.scores.first != nil
          Game.all.each do |game|
            if game.scores.first.player == player
              self.total_goals += game.scores.first.goals
              self.total_against_goals += game.scores.last.goals
            else
              self.total_goals += game.scores.last.goals
              self.total_against_goals += game.scores.first.goals
            end
            self.save
          end
        end
      end
    end
  end
end

