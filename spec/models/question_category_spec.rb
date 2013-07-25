require 'spec_helper'

describe Spree::QuestionCategory do
  let(:question_category) { create(:question_category) }
  let(:valid_attributes)  { build(:question_category) }

  subject { question_category }

  context "instance attributes" do
    it "create a new instance given valid attributes" do
      #pending "undefined method `stringify_keys'"
      Spree::QuestionCategory.create!(name: valid_attributes.name )
    end
  end

  context "factory" do
    it "is valid" do
      valid_attributes.valid?.should be_true, valid_attributes.errors.full_messages.join(',')
    end
  end

  context "relation" do
    it { should have_many(:questions) }

    it "have questions" do
      subject.questions.should_not be_nil
    end
  end

  context "validation" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it "is invalid without a name" do
      build(:question_category, name: nil).should_not be_valid
    end
  end

  context "mass asignment" do
    it { should_not allow_mass_assignment_of(:updated_at) }
    it { should_not allow_mass_assignment_of(:created_at) }
  end

  context "acts as list" do
    before do
      2.times { create(:question_category) }
    end

    it "can have its position changed" do
      subject.move_to_bottom
      subject.position.should eq(3)
    end
  end
end
