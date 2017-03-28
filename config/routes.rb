CalendarExample::Application.routes.draw do
  devise_for :users

  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"

  resources :events, only: [:show, :new, :index, :create]
  get '/events/:date', to: 'events#index'

  resources :day, only: [:show]
  #redirect_to :root unless params.require(:date) =~ /^\d{8}$/
end
