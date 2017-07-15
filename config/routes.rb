Rails.application.routes.draw do  

root 'pages#home'
get '/home', to: 'pages#home'
#get '/home', to: 'eminem1#home'
#get '/wallpapers' ,to:'wallapers#index'
#get '/wallapers/new',to:'wallapers#new', as: 'new_wallpaper'
#post '/wallapers',to:'wallapers#upload'
#get '/wallapers/:id/edit' ,to:'wallapers#edit',as:'edit_wallpaper'
#patch '/wallapers/:id' ,to:'wallapers#update'
#get 'wallapers:id' ,to: 'wallapers#show' ,as:"wallpaper"
#delete '/wallapers/:id',to: 'wallapers#destroy'
resources :wallpapers
end
