class Comentario < ActiveRecord::Base
  resourcify
  belongs_to :comentavel, :polymorphic => true
end
