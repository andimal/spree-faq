class Spree::Admin::QuestionCategoriesController < Spree::Admin::ResourceController
  def new
    @question_category = @object
  end

  def edit
    @question_category = @object
  end
end
