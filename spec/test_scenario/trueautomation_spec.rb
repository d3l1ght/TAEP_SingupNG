require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'
    # Authorisation with stas.odessa@ua.fm
    # Click on Login button >>>>>>>
    find(ta(   'trueautomationio:home:GetEarlyAccesBtn')).click
    # Fill in Email and Password fields >>>>>>>
    fill_in ta(   'trueautomationio:auth:signin:EmailField'), with: 'stas.odessa@@ua.fm'
    fill_in ta(   'trueautomationio:auth:signin:PasswordField'), with: '7167276@Ss'
    # Click on red Login button >>>>>>>
    find(ta(   'trueautomationio:auth:signin:LoginBtn')).click


    # page.should have_ta ta(   'Project_word')
    # Found Project CSS
    #find(:css, "#app > div > div > div > div > ul > li > span")
    # Try to find another ways for searching text like "Projects"

    page.should have_text "Please use a valid email address"

  end
end
