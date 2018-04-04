Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#======================================
# Create all the restaurants
#1st request = empty form
get 'restaurants/new', to: "restaurants#new"

#2nd request = submission
post 'restaurants', to: "restaurants#create"

# Create one the restaurant


#======================================
# Read all the restaurants
get 'restaurants', to: "restaurants#index"

# Read one the restaurant
get 'restaurants/:id', to: "restaurants#show"


#======================================
# Update one the restaurant
# 1st blank form for restaurants/3/edit

get 'restauarants/:id/edit', to: "restaurants#edit"

#update our restaurants
#for edits we want to do a patch. smart edit for particular records
#restaurants/45
patch 'restaurants/:id', to: "restaurants#update"


#======================================
# Delete one the restaurant
# restaurant/1/delete
delete 'restaurants/:id', to: "restaurants#destroy"


#===============================================
#alternatively you can do all of the above using the code below
# resources :restaurants


#or you wanna keep it tighter
# resources :restaurants, only: [:index, :new, :create]

#or you wanna keep it tighter
# resources :restaurants, except: [:index, :new, :create]


root to: 'restaurants#index'




end
