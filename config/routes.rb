Rails.application.routes.draw do
  resources :movies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#homepage'
end

# These two routes are from the same tutorial I linked in the movies_controller. Also changed some
# of the words, which might be breaking it - but I don't understand why... because I don't think I'm
# sure what it's telling the thing to do.

Rails.application.routes.draw do
  # ...
  get '/new_movie_path' => 'application#new_movie_path'
end

Rails.application.routes.draw do
  # ...
  post '/create_movie_path' => 'application#create_movie_path'
end
