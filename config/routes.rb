Rails.application.routes.draw do
devise_for :users
root 'tweets#index'
get 'tweets' => 'tweets#index'
get 'tweets/new'  =>  'tweets#new'
post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
delete  'tweets/:id'  => 'tweets#destroy'
patch   'tweets/:id'  => 'tweets#update'
get   'tweets/:id/edit'  => 'tweets#edit'
get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
 get 'tweets/:id' => 'tweets#show'       #ツイート詳細画面
 end
