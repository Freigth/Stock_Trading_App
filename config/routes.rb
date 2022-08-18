Rails.application.routes.draw do
  root 'pages#home'
  # devise
  devise_for :users
  devise_scope :users do
    get  'users/admin_new' => 'users#admin_new'
    post 'users/admin_create' => 'users#admin_create'
  end

  # # get 'stock/:id/buy' => 'stocks#buy_stock', as: 'stock_buy'
  # get 'admin' => 'users#index', as: 'users_admin'
  # get 'stocks' => 'stocks#index'
  resources :users, only: %i[index show update destroy edit]
  # # transactions
  # get 'transactions/buy' => 'transactions#buy'
  # get 'transactions/:id/sell' => 'transactions#sell', as: 'transactions_sell'
  # resources :transactions, only: %i[create destroy]
  # # user wallet
  # get 'user_wallet/deposit' => 'user_wallet#deposit', as: 'user_deposit'
  # get 'user_wallet/withdraw' => 'user_wallet#withdraw', as: 'user_withdraw'
  # resources :user_wallet, only: [:create]
  # # user history
  # get 'user_history' => 'pages#history'
  # # error 404
  # get '*path' => 'pages#not_found'
end
