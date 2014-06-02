Askaway::Application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)

  root to: 'questions#trending'

  resources :questions, only: [:show, :new, :create] do
    member do
      post   'flag'
    end
    resources :comments, only: [:create]
  end
  get 'new_questions', to: 'questions#new_questions'
end
