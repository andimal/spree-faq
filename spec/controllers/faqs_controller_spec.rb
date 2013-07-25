require 'spec_helper'

describe Spree::FaqsController do
  stub_authorization!

  let!(:user) { create(:user) }
  let!(:question_category) { create(:question_category) }
  let!(:question) { create(:question, question_category: question_category) }

  before { controller.stub spree_current_user: user }

  context "#index" do
    specify do
      Spree::QuestionCategory.should_receive(:all).and_return(:categories)
      spree_get :index

      assigns(:categories).should eql(:categories)
      response.should be_success
    end
  end

  context "#default_title" do

    it "should return default title"do

      faq_title = Spree::FaqsController.new
      faq_title.default_title.should == Spree.t(:frequently_asked_questions)

    end

  end
end
