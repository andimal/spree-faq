Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :question_categories
    resources :questions
  end
  match :faq, to: 'faqs#index', as: 'faq'
end
