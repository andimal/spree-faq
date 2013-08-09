require 'spec_helper'

describe Spree::Admin::QuestionCategoriesController do
  stub_authorization!

  let!(:user) { create(:user) }
  let!(:question_category) { create(:question_category) }
  let!(:question) { create(:question, question_category: question_category) }
  let (:valid_attributes) { attributes_for(:question_category) }

  before { controller.stub spree_current_user: user }

  context 'controller instance' do
    it 'use Admin::QuestionCategoriesController' do
      controller.should be_an_instance_of Spree::Admin::QuestionCategoriesController
    end
  end

  context '#index' do
    specify do
      spree_get :index
      response.should render_template :index
    end
  end

  context '#new' do
    before { spree_get :new }

    it { assigns(:question_category).should be_a_new Spree::QuestionCategory }
    it { response.should render_template :new }
  end

  context '#edit' do
    before { spree_get :edit, id: question_category }

    it { assigns(:question_category).should eq question_category }
    it { response.should render_template :edit }
  end

  context '#create' do
    context 'with valid params' do
      it 'creates a new Spree::QuestionCategory' do
        expect {
          spree_post :create, question_category: valid_attributes
        }.to change(Spree::QuestionCategory, :count).by(1)
      end

      it 'assigns a newly created question_category as @question_category' do
        spree_post :create, question_category: valid_attributes
        assigns(:question_category).should be_a Spree::QuestionCategory
        assigns(:question_category).should be_persisted
      end
    end
  end

  context '#destroy' do
    it 'destroys the requested question_category' do
      expect {
        spree_delete :destroy, id: question_category
      }.to change(Spree::QuestionCategory, :count).by(-1)
    end

    it 'requires the :id parameter' do
      expect { spree_delete :destroy }.to raise_error(NoMethodError)
    end
  end
end
