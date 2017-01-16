# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   Alimentando a tabela de regras para o Rolify
p "Removendo #{Role.all.count} regras encontradas."
Role.destroy_all
p "Criando 2 regras "
[:admin, :usuario].each do |role|
  Role.create(name: role)
end
p "Foram criadas #{Role.all.count} regras"

