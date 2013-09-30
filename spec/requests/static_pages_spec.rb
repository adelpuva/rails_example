require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
    before { visit home_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('User') }

    #it "should have the content 'Sample App'" do
    #  expect(page).to have_content('Sample App')
    #end

    #it "should have the right title" do
    #  expect(page).to have_title("Home")
    #end

    #it "should not have a custom page title" do
    #  expect(page).not_to have_title('Users')
    #end

  end

end
