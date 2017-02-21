CalendarExample::Application.routes.draw do
  devise_for :users
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"
  resources :events, only: [:show, :new, :index]

end
