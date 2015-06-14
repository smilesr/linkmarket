Rails.application.routes.draw do
  root to: "links#index"
  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#create'
  get '/users/login', to:  'sessions#login'
  post '/users/login', to: 'sessions#create'
  # delete 'users/', to: 'sessions#destroy'

  # get "/links/:id", to: URL
  get "/links/new", to: "links#new"
  post "/links", to: "links#create"

  get "/link/:id/comments", to: "comments#new", as: "comments_new"
  post "/link/:id/comments", to: "comments#create"


            # show the login page POST /login # set the user
            #  id in the session if password checks out DELETE
            # /login # remove user id from session

  # get '/links/new', to: # show the form for a new link POST /links # the f
  #                # orm action for new link, creates a link (if logged
  #                #  in) GET /link/:id # takes you to the thing it links to
  #
  # get '/link/:id/comments', to: # get the page for a link, its comments, and comment
  #                        # form POST /link/:id/comments # the form action for new comment,
  #                        #  creates a comment (if logged in)
  #
  # get '/link/:id/comments', to: # get the page for a link, its comments, and
  #                        #  comment form POST /link/:id/comments # the
                         # form action for new comment, creates a comment
                         # (if logged in)




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
