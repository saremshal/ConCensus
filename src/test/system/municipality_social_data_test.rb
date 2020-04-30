require "application_system_test_case"

class MunicipalitySocialDataTest < ApplicationSystemTestCase
  setup do
    @municipality_social_datum = municipality_social_data(:one)
  end

  test "visiting the index" do
    visit municipality_social_data_url
    assert_selector "h1", text: "Municipality Social Data"
  end

  test "creating a Municipality social datum" do
    visit municipality_social_data_url
    click_on "New Municipality Social Datum"

    fill_in "Family households", with: @municipality_social_datum.family_households
    fill_in "Household with computer", with: @municipality_social_datum.household_with_computer
    fill_in "Households", with: @municipality_social_datum.households
    fill_in "Married females above 15", with: @municipality_social_datum.married_females_above_15
    fill_in "Married male above 15", with: @municipality_social_datum.married_male_above_15
    fill_in "Name", with: @municipality_social_datum.name
    fill_in "Never married females above 15", with: @municipality_social_datum.never_married_females_above_15
    fill_in "Never married male above 15", with: @municipality_social_datum.never_married_male_above_15
    fill_in "Older 3 in college or graduate", with: @municipality_social_datum.older_3_in_college_or_graduate
    fill_in "Older 3 in highschool", with: @municipality_social_datum.older_3_in_highschool
    fill_in "Older 3 in school", with: @municipality_social_datum.older_3_in_school
    fill_in "Percent 25 and older highschool grad", with: @municipality_social_datum.percent_25_and_older_highschool_grad
    fill_in "Percent family households", with: @municipality_social_datum.percent_family_households
    fill_in "Percent household with computer", with: @municipality_social_datum.percent_household_with_computer
    fill_in "Percent never married females above 15", with: @municipality_social_datum.percent_never_married_females_above_15
    fill_in "Percent never married males above 15", with: @municipality_social_datum.percent_never_married_males_above_15
    fill_in "Percent older 3 in college or graduate", with: @municipality_social_datum.percent_older_3_in_college_or_graduate
    fill_in "Percent older 3 in highschool", with: @municipality_social_datum.percent_older_3_in_highschool
    fill_in "Total 15to50 gave birth past year", with: @municipality_social_datum.total_15to50_gave_birth_past_year
    fill_in "Total 25 and older highschool grad", with: @municipality_social_datum.total_25_and_older_highschool_grad
    fill_in "Year", with: @municipality_social_datum.year
    click_on "Create Municipality social datum"

    assert_text "Municipality social datum was successfully created"
    click_on "Back"
  end

  test "updating a Municipality social datum" do
    visit municipality_social_data_url
    click_on "Edit", match: :first

    fill_in "Family households", with: @municipality_social_datum.family_households
    fill_in "Household with computer", with: @municipality_social_datum.household_with_computer
    fill_in "Households", with: @municipality_social_datum.households
    fill_in "Married females above 15", with: @municipality_social_datum.married_females_above_15
    fill_in "Married male above 15", with: @municipality_social_datum.married_male_above_15
    fill_in "Name", with: @municipality_social_datum.name
    fill_in "Never married females above 15", with: @municipality_social_datum.never_married_females_above_15
    fill_in "Never married male above 15", with: @municipality_social_datum.never_married_male_above_15
    fill_in "Older 3 in college or graduate", with: @municipality_social_datum.older_3_in_college_or_graduate
    fill_in "Older 3 in highschool", with: @municipality_social_datum.older_3_in_highschool
    fill_in "Older 3 in school", with: @municipality_social_datum.older_3_in_school
    fill_in "Percent 25 and older highschool grad", with: @municipality_social_datum.percent_25_and_older_highschool_grad
    fill_in "Percent family households", with: @municipality_social_datum.percent_family_households
    fill_in "Percent household with computer", with: @municipality_social_datum.percent_household_with_computer
    fill_in "Percent never married females above 15", with: @municipality_social_datum.percent_never_married_females_above_15
    fill_in "Percent never married males above 15", with: @municipality_social_datum.percent_never_married_males_above_15
    fill_in "Percent older 3 in college or graduate", with: @municipality_social_datum.percent_older_3_in_college_or_graduate
    fill_in "Percent older 3 in highschool", with: @municipality_social_datum.percent_older_3_in_highschool
    fill_in "Total 15to50 gave birth past year", with: @municipality_social_datum.total_15to50_gave_birth_past_year
    fill_in "Total 25 and older highschool grad", with: @municipality_social_datum.total_25_and_older_highschool_grad
    fill_in "Year", with: @municipality_social_datum.year
    click_on "Update Municipality social datum"

    assert_text "Municipality social datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Municipality social datum" do
    visit municipality_social_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Municipality social datum was successfully destroyed"
  end
end
