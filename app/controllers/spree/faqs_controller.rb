module Spree
	class FaqsController < Spree::StoreController
	  helper 'spree/products'

	  def index
	    @categories = Spree::QuestionCategory.all(:include => :questions)
	  end

	  def default_title
	    Spree.t(:frequently_asked_questions)
	  end
	end
end
