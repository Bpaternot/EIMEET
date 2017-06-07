class TournamentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def playground?
    true
  end

  def update?
    true
    # record.user == user
  end

  def destroy?
    record.user == user
  end

end
