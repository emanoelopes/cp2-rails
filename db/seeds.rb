# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   Alimentando a tabela de regras para o Rolify
p "Verificando banco de regras..."
p "Existem #{Role.all.count} regras cadastradas"
if Role.all.count == 0
  [:admin, :usuario].each do |role|
    Role.create(name: role)
    p "As regras admin e usuário foram criadas."
  end
  else
    p "As regras existentes foram preservadas." 
end
