class CreateQuestionCategories < ActiveRecord::Migration
  def up
    create_table :spree_question_categories do |t|
      t.string  :name
      t.integer :position

      t.timestamps
    end
  end

  def down
    drop_table :spree_question_categories
  end
end
