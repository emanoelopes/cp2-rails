class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :cliente
        can :create, Comentario
      else
        can :read, :all
      end
  end
end
