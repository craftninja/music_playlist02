require 'spec_helper'

feature 'User can manage a music playlist' do
  scenario 'User is welcomed on the homepage' do
    visit '/'
    expect(page).to have_content('Welcome to PlaylistLand')
  end

  scenario 'User can add titles, links to the homepage' do
    visit '/'
    playlist_link = 'Welcome to PlaylistLand'
    title = "Mokadem - 'Mokadem' EP"
    url = 'https://soundcloud.com/thump/sets/mokadem-mokadem-ep'
    click_on playlist_link
    click_on 'Add new Jam'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Queue!'
    expect(page).to have_content(title)
    expect(page).to have_content(url)
  end

  scenario 'User can update songs' do
    old_title = 'Touch'
    title = 'Holy Other - Touch'
    url = 'https://soundcloud.com/holyother/touch'
    visit '/playlist'
    click_on 'Add new Jam'
    fill_in 'Title', with: old_title
    fill_in 'URL', with: url
    click_on 'Queue!'
    click_on old_title
    expect(page).to have_content(old_title)
    expect(page).to have_content(url)
    click_on 'Edit'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Update'
    expect(page).to have_content(title)
    expect(page).to have_content(url)
  end

end
