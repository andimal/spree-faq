require 'spec_helper'

feature 'FAQ', js: true do
  given!(:user) { create(:user) }
  given!(:question_category) { create(:question_category, name: 'Shopping') }
  given!(:question) do
    create(:question,
      question_category: question_category,
      question: 'Do you sell stuff?',
      answer: 'Think so..')
  end

  background do
    visit spree.faq_path
  end

  scenario 'have all elements' do
    page.should have_text Spree.t(:frequently_asked_questions)
    page.should have_text 'Shopping'
    page.should have_text 'Do you sell stuff?'
  end

  context 'when click on question' do
    scenario 'show answer' do
      click_link 'Do you sell stuff?'
      page.should have_text 'Think so..'
    end
  end
end
