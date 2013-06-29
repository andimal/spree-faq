class Spree::QuestionCategory < ActiveRecord::Base
  acts_as_list

  has_many :questions, class_name: 'Spree::Question'

  validates_uniqueness_of :name
  validates :name, presence: true

  accepts_nested_attributes_for :questions, allow_destroy: true
  attr_accessible :name, :questions_attributes, :question, :answer
end
