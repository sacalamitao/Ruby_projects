require 'rails_helper'

RSpec.describe "CreatingTaskOrganizations", type: :system do
  before do
    driven_by(:rack_test)
  end

  # pending "add some scenarios (or delete) #{__FILE__}"
  it 'saves and displays the resulting blog post' do
    visit '/task_organizations/new'

    fill_in 'Title', with: 'Hello, World!'
    fill_in 'Body', with: 'Hello, I say!'

    click_on 'Create Task Organizations'

    expect(page).to have_content("Hello, World!")
    expect(page).to have_content("Hello, I say!")

    task_organizations = TaskOrganization.order("id").last
    expect(task_organizations.title).to eq('Hello, World!')
    expect(task_organizations.body).to eq('Hello, I say!')
  end

end
