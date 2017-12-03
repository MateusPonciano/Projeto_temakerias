Rails.application.routes.draw do
  resources :compoes
  resources :temakeriacompraprodutos
  resources :temakeria
  resources :telfuncionarios
  resources :telfornecedors
  resources :promocaos
  resources :produtos
  resources :mesas
  resources :mesacompracardapios
  resources :garcoms
  resources :garcomdiastrabalhos
  resources :funcionarios
  resources :fornecedors
  resources :dependentes
  resources :compos
  resources :cardapios
  resources :atendes
  resources :armazenas
  resources :apresenta
  resources :administradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'general#home'
end
