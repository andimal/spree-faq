module Spree
  class FaqsController < StoreController
    helper 'spree/products'

    def index
      @categories = QuestionCategory.includes(:questions).order(position: :asc).load

      if @categories.present?
        if params[:category].present?
          @category = QuestionCategory.where("permalink = ?", params[:category]).first
        else
          @category = QuestionCategory.where("position = ?", 1).first
          params[:category] = @category.permalink
        end
      end
    end

    def default_title
      Spree.t(:frequently_asked_questions)
    end
  end
end
