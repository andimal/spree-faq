Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :question_categories
    resources :questions
  end
  get 'faq', to: 'faqs#index'
end
