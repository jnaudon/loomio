Loomio::Application.routes.draw do
  devise_for :users, :controllers => { :invitations => 'users/invitations' }

  resources :groups, except: :index do
    post :add_members, on: :member
    get :add_subgroup
    resources :motions, name_prefix: "groups_"
    get :request_membership, on: :member
  end

  resources :motions, except: :index do
    resources :votes
  end
  match "/motions/:id/close", :to => "motions#close_voting", :as => :close_motion_voting,
    :via => :post

  match "/motions/:id/open", :to => "motions#open_voting", :as => :open_motion_voting,
    :via => :post

  resources :discussions, only: [:add_comment, :show, :new, :create] do
    post :add_comment, :on => :member
    get :new_proposal, :on => :member
  end

  resources :votes
  resources :memberships, except: [:new, :update, :show] do
    post :make_admin, on: :member
    post :remove_admin, on: :member
    post :approve, on: :member
  end
  resources :users
  resources :comments, only: :destroy do
    post :like, on: :member
    post :unlike, on: :member
  end
  match "/settings", :to => "users#settings", :as => :user_settings

  # route logged in user to dashboard
  resources :dashboard, only: :show
  authenticated do
    root :to => 'dashboard#show'
  end
  # route landing page to demo page
  match '/demo' => 'landing#demo'
  # route logged out user to landing page
  resources :landing, only: :show
  root :to => 'landing#show'
end
