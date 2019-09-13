require "application_system_test_case"

class MyarticlesTest < ApplicationSystemTestCase
  setup do
    @myarticle = myarticles(:one)
  end

  test "visiting the index" do
    visit myarticles_url
    assert_selector "h1", text: "Myarticles"
  end

  test "creating a Myarticle" do
    visit myarticles_url
    click_on "New Myarticle"

    fill_in "Article", with: @myarticle.article_id
    fill_in "Date", with: @myarticle.date
    fill_in "Time", with: @myarticle.time
    fill_in "User", with: @myarticle.user_id
    click_on "Create Myarticle"

    assert_text "Myarticle was successfully created"
    click_on "Back"
  end

  test "updating a Myarticle" do
    visit myarticles_url
    click_on "Edit", match: :first

    fill_in "Article", with: @myarticle.article_id
    fill_in "Date", with: @myarticle.date
    fill_in "Time", with: @myarticle.time
    fill_in "User", with: @myarticle.user_id
    click_on "Update Myarticle"

    assert_text "Myarticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Myarticle" do
    visit myarticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myarticle was successfully destroyed"
  end
end
