require 'spec_helper'

feature "Admin FAQ" do
  stub_authorization!

  given!(:admin_user) { create(:admin_user) }

  background do
    visit spree.admin_path
    click_link "Configuration"
  end

  scenario "have faq tab in configuration sidebar" do
    expect(page).to have_text("FAQ")
  end

  context "create new category" do
    background do
      click_link "FAQ"
      click_link "New Category"
    end

    scenario "save with valid name" do
      fill_in "Name", with: "Shopping"
      click_button "Create"
      within "#listing_faq" do
        expect(page).to have_text "Shopping"
      end
    end

    scenario "error when empty name" do
      click_button "Create"
      expect(page).to have_text "Name can't be blank"
    end
  end

  context "modify" do
    given!(:question_category) { create(:question_category, name: "Shopping") }
    given!(:question) do
      create(:question,
        question_category: question_category,
        question: "Do you sell stuff?",
        answer: "Think so..")
    end

    background do
      click_link "FAQ"
    end

    scenario "update category" do
      within "#listing_faq" do
        expect(page).to have_text "Shopping"
        all(".icon-edit")[0].click
      end
      expect(page).to have_text "Editing Category Questions"

      fill_in "Category Name", with: "Selling"
      click_button "Update"

      within "#listing_faq" do
        expect(page).to have_text "Selling"
      end
    end

    scenario "deleted category" do
      within "#listing_faq" do
        expect(page).to have_text "Shopping"
        pending "The action 'show' could not be found for Spree::Admin::QuestionCategoriesController"
        find(".icon-trash", text: "Shopping").click
      end
    end
  end
end
