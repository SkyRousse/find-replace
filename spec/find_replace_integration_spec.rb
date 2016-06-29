require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find replace path', {:type => :feature}) do

  it('takes a word from the user and replaces one word with another') do
    visit('/')
    fill_in('target', :with => 'cab')
    fill_in('find', :with => 'cab')
    fill_in('replace', :with => 'uber')
    click_button('Submit')
    expect(page).to have_content('uber')
  end
  it('takes a paragraph of text from the user and replaces every instance of a word with another word selected by the user') do
    visit('/')
    fill_in('target', :with => 'Rock star from Mars winning? Rolling out Magic breakfast martini what dying is for fools boom the rock star from Mars and winning two donuts and a Rockstar drinking party the breakfast partying. Dying is for fools seven gram rocks I\'m still alive the party the. Winning sober party party bro sober seven gram rocks two donuts and a Rockstar two donuts and a Rockstar.')
    fill_in('find', :with => 'party')
    fill_in('replace', :with => 'marty')
    click_button('Submit')
    expect(page).to have_content('Rock star from Mars winning? Rolling out Magic breakfast martini what dying is for fools boom the rock star from Mars and winning two donuts and a Rockstar drinking marty the breakfast martying. Dying is for fools seven gram rocks I\'m still alive the marty the. Winning sober marty marty bro sober seven gram rocks two donuts and a Rockstar two donuts and a Rockstar.')
save_and_open_page
  end
end
