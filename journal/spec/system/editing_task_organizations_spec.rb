require 'rails_helper'

RSpec.describe "EditingTaskOrganizations", type: :system do
  before do
    driven_by(:rack_test)
  end

  before :all do
    @task_organization = TaskOrganization.create(title:'sample1', body:'sample2')
  end



  it 'edits the post' do
    visit "/task_organizations/#{@task_organization.id}/edit"
    fill_in 'Title', with: 'Hello, World! edited'
    fill_in 'Body', with: 'Hello, I say! edited'
    click_on 'Submit Task Organization'

    expect(page).to have_content("Hello, World! edited")
    expect(page).to have_content("Hello, I say! edited")
  end
end
