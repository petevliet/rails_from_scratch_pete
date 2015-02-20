require 'rails_helper'

describe 'user can CRUD statuses' do

  before :each do
    @status = Status.create(status: "This is an example", user: "superman", likes: "0")
  end

  scenario 'user can create a status' do
    visit '/'

    click_on 'New Status'
    fill_in 'status[status]', with: 'example status'
    fill_in 'status[user]', with: 'example user'

    click_on 'Create Status'

    expect(page).to have_content('Update successfully added')

  end

  scenario 'user can view a status' do

    visit '/'
    click_on 'This is an example'

    expect(page).to have_content('This is an example')

  end

  scenario 'user can update a status' do

    visit '/'
    click_on 'edit'
    fill_in 'status[status]', with: 'new example'

    click_on 'Update Status'

    expect(page).to have_content('Status was successfully updated.')

  end

  scenario 'user can delete a status' do

    visit '/'
    click_on 'delete'
    expect(page).to have_content('Status was successfully destroyed.')

  end

  scenario 'user can like a status' do

    visit '/'
    click_on 'like'
    expect(page).to have_content('You have liked')

  end

end
