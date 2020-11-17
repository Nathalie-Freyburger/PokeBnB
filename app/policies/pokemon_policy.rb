class PokemonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    is_user_pokemon?
  end

  def shwo?
    true
  end

  def destroy?
    is_user_pokemon?
  end

  private

  def is_user_pokemon?
    user == record.user
  end
end
