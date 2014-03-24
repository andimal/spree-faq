class AddPermalinkToQuestionCategories < ActiveRecord::Migration
  def change
    add_column :spree_question_categories, :permalink, :string
  end
end
