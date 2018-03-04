Rails.application.routes.draw do
  #create
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  #read
  get '/' => 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
   # Update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  #Delete
  post '/posts/destroy/:post_id' => 'posts#destroy'
 
end
