VotaPrato::Application.routes.draw do
  root to: "welcome#index"
  devise_for :users
  get 'welcome/index'

  resources :restaurantes
  resources :comentarios
  resources :qualificacoes
  resources :clientes
  resources :users
  match 'ola' => 'ola_mundo#index', via: 'get'
  match 'hello_world' => 'hello_world#index', via: 'get'
  get 'rack', :to => proc {|env| [200, {"Content-Type" => "text/html"}, ["App Rack numa rota Rails"]]}
end

