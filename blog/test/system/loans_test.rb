require "application_system_test_case"

class LoansTest < ApplicationSystemTestCase
  setup do
    @loan = loans(:one)
  end

  test "visiting the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  test "creating a Loan" do
    visit loans_url
    click_on "New Loan"

    fill_in "Age", with: @loan.age
    fill_in "Amount", with: @loan.amount
    fill_in "Code", with: @loan.code
    fill_in "First name", with: @loan.first_name
    fill_in "Last name", with: @loan.last_name
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  test "updating a Loan" do
    visit loans_url
    click_on "Edit", match: :first

    fill_in "Age", with: @loan.age
    fill_in "Amount", with: @loan.amount
    fill_in "Code", with: @loan.code
    fill_in "First name", with: @loan.first_name
    fill_in "Last name", with: @loan.last_name
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  test "destroying a Loan" do
    visit loans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loan was successfully destroyed"
  end
end
