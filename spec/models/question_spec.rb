require 'spec_helper'

describe Spree::Question do
  let!(:question_category) { create(:question_category) }
  let(:question) { create(:question, question_category_id: question_category.id) }
  let(:valid_attributes) { build(:question) }

  subject { question }

  context "factory" do
    subject { valid_attributes }

    it "is valid" do
      subject.valid?.should be_true, subject.errors.full_messages.join(',')
    end
  end

  context "instance attributes" do
    it "create a new instance given valid attributes" do
      pending "undefined method `stringify_keys'"
      Spree::Question.create! valid_attributes
    end
  end

  context "relation" do
    it { should belong_to(:question_category) }

    it "belong to a category" do
      subject.question_category.should_not be_nil
    end
  end

  context "validation" do
    it { should validate_presence_of(:question_category_id) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:answer) }

    it "require a category" do
      invalid_question = build(:question, question_category: nil)
      invalid_question.should have(1).error_on(:question_category_id)
    end

    it "require a question" do
      invalid_question = build(:question, question: nil)
      invalid_question.should have(1).error_on(:question)
    end

    it "require a answer" do
      invalid_question = build(:question, answer: nil)
      invalid_question.should have(1).error_on(:answer)
    end
  end

  context "mass asignment" do
    it { should_not allow_mass_assignment_of(:updated_at) }
    it { should_not allow_mass_assignment_of(:created_at) }
  end

  context "acts as list" do
    before do
      2.times { create(:question) }
    end

    it "can have its position changed" do
      subject.move_to_bottom
      subject.position.should eq(3)
    end
  end
end
