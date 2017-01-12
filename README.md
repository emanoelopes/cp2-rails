CanCanCan e Rolify
==================

Ajustes finos
-------------

Depois de instalar o Devise, adicionar:

#Em application_controller.rb
include CanCan::ControllerAdditions

#No controlador:
load_and_authorize_resource

#No modelo:
resourcify

#Em ability.rb:

def initialize(user)
if user.has_role? :admin
  can :manage, :all
  else
    can :read, :all
end
end

#Em user.db:
rolify

