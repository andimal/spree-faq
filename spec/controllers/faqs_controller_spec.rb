require 'spec_helper'

describe Spree::FaqsController do
  let!(:question_category) { create(:question_category) }
  let!(:question) { create(:question, question_category: question_category) }

  before { controller.stub spree_current_user: nil }

  context "#index" do
    specify do
      Spree::QuestionCategory.should_receive(:all).and_return(:categories)
      spree_get :index

      assigns(:categories).should eql :categories
      response.should be_success
    end
  end

  context "#default_title" do
    it "return default title" do
      subject.default_title.should eq Spree.t(:frequently_asked_questions)
    end
  end
end
