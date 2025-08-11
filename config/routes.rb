Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' , to: 'homes#about' , as: 'about'
  devise_scope :user do #AI質問にて追加
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
