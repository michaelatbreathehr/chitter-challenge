feature 'Adding a new peep' do
  scenario 'A user can add a new peep' do
    visit('/peeps/new')
    fill_in('message', with: 'This is my first peeps')
    click_button('Submit')

    expect(page).to have_content 'This is my first peeps'
  end
end
