require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Statty App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Statty App')
    end

    it "should have the right title" do
		visit '/static_pages/home'
  		expect(page).to have_title("Statty")
	end

	it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
		visit '/static_pages/help'
  		expect(page).to have_title("Statty | Help")
	end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
		visit '/static_pages/about'
  		expect(page).to have_title("Statty | About Us")
	end
  end
end