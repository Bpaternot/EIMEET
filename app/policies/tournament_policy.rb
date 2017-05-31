class TournamentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.joins(:bar).where("bars.latitude IS NOT NULL and bars.longitude IS NOT NULL")
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
