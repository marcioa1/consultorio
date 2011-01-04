class Ability
  include CanCan::Ability

  def initialize(user)
    if user.owner?
      can :manage, :all
    else
      can :read, :all
    end
  end
end