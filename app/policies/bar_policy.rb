class BarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope = Bar.where.not(latitude: nil, longitude: nil)
    end
  end

  def show?
    true
  end
end
