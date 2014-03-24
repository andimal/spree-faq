module Spree
  class FaqsController < StoreController
    helper 'spree/products'

    def index
      @categories = QuestionCategory.includes(:questions).order(position: :asc).load
    end

    def default_title
      Spree.t(:frequently_asked_questions)
    end
  end
end
