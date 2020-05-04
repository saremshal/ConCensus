require 'test_helper'

class MunicipalitySocialDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @municipality_social_datum = municipality_social_data(:one)
  end

  test "should get index" do
    get municipality_social_data_url
    assert_response :success
  end

  test "should get new" do
    get new_municipality_social_datum_url
    assert_response :success
  end

  test "should create municipality_social_datum" do
    assert_difference('MunicipalitySocialDatum.count') do
      post municipality_social_data_url, params: { municipality_social_datum: { family_households: @municipality_social_datum.family_households, household_with_computer: @municipality_social_datum.household_with_computer, households: @municipality_social_datum.households, married_females_above_15: @municipality_social_datum.married_females_above_15, married_male_above_15: @municipality_social_datum.married_male_above_15, name: @municipality_social_datum.name, never_married_females_above_15: @municipality_social_datum.never_married_females_above_15, never_married_male_above_15: @municipality_social_datum.never_married_male_above_15, older_3_in_college_or_graduate: @municipality_social_datum.older_3_in_college_or_graduate, older_3_in_highschool: @municipality_social_datum.older_3_in_highschool, older_3_in_school: @municipality_social_datum.older_3_in_school, percent_25_and_older_highschool_grad: @municipality_social_datum.percent_25_and_older_highschool_grad, percent_family_households: @municipality_social_datum.percent_family_households, percent_household_with_computer: @municipality_social_datum.percent_household_with_computer, percent_never_married_females_above_15: @municipality_social_datum.percent_never_married_females_above_15, percent_never_married_males_above_15: @municipality_social_datum.percent_never_married_males_above_15, percent_older_3_in_college_or_graduate: @municipality_social_datum.percent_older_3_in_college_or_graduate, percent_older_3_in_highschool: @municipality_social_datum.percent_older_3_in_highschool, total_15to50_gave_birth_past_year: @municipality_social_datum.total_15to50_gave_birth_past_year, total_25_and_older_highschool_grad: @municipality_social_datum.total_25_and_older_highschool_grad, year: @municipality_social_datum.year } }
    end

    assert_redirected_to municipality_social_datum_url(MunicipalitySocialDatum.last)
  end

  test "should show municipality_social_datum" do
    get municipality_social_datum_url(@municipality_social_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_municipality_social_datum_url(@municipality_social_datum)
    assert_response :success
  end

  test "should update municipality_social_datum" do
    patch municipality_social_datum_url(@municipality_social_datum), params: { municipality_social_datum: { family_households: @municipality_social_datum.family_households, household_with_computer: @municipality_social_datum.household_with_computer, households: @municipality_social_datum.households, married_females_above_15: @municipality_social_datum.married_females_above_15, married_male_above_15: @municipality_social_datum.married_male_above_15, name: @municipality_social_datum.name, never_married_females_above_15: @municipality_social_datum.never_married_females_above_15, never_married_male_above_15: @municipality_social_datum.never_married_male_above_15, older_3_in_college_or_graduate: @municipality_social_datum.older_3_in_college_or_graduate, older_3_in_highschool: @municipality_social_datum.older_3_in_highschool, older_3_in_school: @municipality_social_datum.older_3_in_school, percent_25_and_older_highschool_grad: @municipality_social_datum.percent_25_and_older_highschool_grad, percent_family_households: @municipality_social_datum.percent_family_households, percent_household_with_computer: @municipality_social_datum.percent_household_with_computer, percent_never_married_females_above_15: @municipality_social_datum.percent_never_married_females_above_15, percent_never_married_males_above_15: @municipality_social_datum.percent_never_married_males_above_15, percent_older_3_in_college_or_graduate: @municipality_social_datum.percent_older_3_in_college_or_graduate, percent_older_3_in_highschool: @municipality_social_datum.percent_older_3_in_highschool, total_15to50_gave_birth_past_year: @municipality_social_datum.total_15to50_gave_birth_past_year, total_25_and_older_highschool_grad: @municipality_social_datum.total_25_and_older_highschool_grad, year: @municipality_social_datum.year } }
    assert_redirected_to municipality_social_datum_url(@municipality_social_datum)
  end

  test "should destroy municipality_social_datum" do
    assert_difference('MunicipalitySocialDatum.count', -1) do
      delete municipality_social_datum_url(@municipality_social_datum)
    end

    assert_redirected_to municipality_social_data_url
  end
end
