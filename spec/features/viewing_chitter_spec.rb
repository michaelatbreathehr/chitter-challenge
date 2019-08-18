feature 'Viewing chitter' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Chitter"
  end
end


feature 'viewing peeps' do
  scenario 'peeps are visible' do
    Peep.create(message: "This is my first peep")
    Peep.create(message: "This is my second peep")
    Peep.create(message: "This is my third peep")

    visit '/peeps'

    expect(page).to have_content 'This is my first peep'
  end
end
