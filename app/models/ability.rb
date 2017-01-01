class Ability
  include CanCan::Ability

  def initialize(user)
 if user.has_role? :admin
    can :manage, :all
  else
    can :create, Comentario
    can :update, Comentario do |comentario|
      comentario.user == user
    end
    can :destroy, Comentario do |comentario|
      comentario.user == user
    end
  can :read, :all
  end
  end
end
