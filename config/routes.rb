Rails.application.routes.draw do
  resources :statuses

root 'statuses#index'


 post 'statuses/:id/vote_for' => 'statuses#vote_for', as: :vote_for_status

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

end
