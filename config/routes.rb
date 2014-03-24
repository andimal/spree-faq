Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :question_categories
    resources :questions
  end
  get 'faq', to: 'faqs#index'
  get 'faq/:category', to: 'faqs#index'
end
