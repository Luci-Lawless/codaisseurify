require 'rails_helper'

feature 'Add new song', js: true do
  scenario 'add a new song' do
    # Point your browser towards the todo path
    visit artist_path

    # Enter description in the text field
    fill_in 'song_title', with: 'Hell Awaits'
    fill_in 'duration', with: '06:66'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Hell Awaits')
    expect(page).to have_content('06:66')

  end
end
