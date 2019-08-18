feature 'Viewing chitter' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Chitter"
  end
end


feature 'Viewing peeps' do
  scenario 'A user can see a list of peeps' do
    visit('/peeps')
    expect(page).to have_content "This is my first peeps"
    expect(page).to have_content "This is my second peeps"
    expect(page).to have_content "This is my third peeps"
  end
end
