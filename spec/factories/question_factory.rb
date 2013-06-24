FactoryGirl.define do
  factory :question, class: Spree::Question do
    question_category
    sequence(:question) { |n| "question#{n}" }
    answer "value for answer.."
    position 1
  end
end
