class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :usuario
        can :create, Qualificacao 
        can :read, :all
      else
        can :read, :all
      end
  end
end
