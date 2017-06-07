class
  UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard?
    user == record
  end

  def ranking?
    true
  end
end
