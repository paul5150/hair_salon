require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)
require 'pry'
require "spec_helper"

describe('adds a new client', {:type => :feature}) do
    it('allows a user to add new clients to a list') do
      visit('/')
      click_link("Add New Client")
      fill_in('name', :with => 'Wanda Wonders')
      click_button('Add Client')
      expect(page).to have_content('Clients')
    end
  end
