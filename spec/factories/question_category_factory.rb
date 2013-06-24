FactoryGirl.define do
  factory :question_category, class: Spree::QuestionCategory do
    sequence(:name) { |n| "category#{n}" }
    position 1
  end
end
