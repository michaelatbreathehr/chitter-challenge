require 'pg'

feature 'Viewing all peeps' do
  scenario 'A user can see all peeps' do
    Peep.create(message: "This is my first peeps")
    Peep.create(message: "This is my second peeps")
    Peep.create(message: "This is my third peeps")

    visit('/peeps')

    expect(page).to have_content "This is my first peeps"
    expect(page).to have_content "This is my second peeps"
    expect(page).to have_content "This is my third peeps"
  end
end
