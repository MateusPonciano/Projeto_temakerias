Rails.application.routes.draw do
  resources :garcomdiastrabalhos
  resources :dependes
  resources :atendes
  resources :apresenta
  resources :armazenas
  resources :compoes
  resources :temakeriacompraprodutos
  resources :mesacompracardapios
  resources :mesas
  resources :promocaos
  resources :cardapios
  resources :produtos
  resources :telfornecedors
  resources :fornecedors
  resources :temakeria
  resources :administradors
  resources :garcoms
  resources :telfuncionarios
  resources :funcionarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'general#home'
end
