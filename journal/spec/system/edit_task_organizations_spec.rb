require 'rails_helper'

RSpec.describe "EditTaskOrganizations", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'edits the task' do
    task_organizations = TaskOrganization.order('id').last
    visit "/task_organizations/#{task_organizations}/edit"
    
    fill_in 'Title', with: 'Hello, World! Edited'
    fill_in 'Body', with: 'Hello, I say! Edited'
    click_on 'Submit Task Organizations'

    expect(page).to have_content('Hello, World! Edited')
    expect(page).to have_content('Hello, I say! Edited')

    # expect(task_organizations.title).to eq('Hello, World!')
    # expect(task_organizations.body).to eq('Hello, I say!')
  end
end
