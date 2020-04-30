class MunicipalitySocialDatum < ApplicationRecord
    require 'csv'

    def self.import(file)
        CSV.foreach(file.path) do |row|
            name = row[0]
            year = row[1]
            households = row[2].to_i
            family_households = row[3].to_i
            percent_family_households = row[4].to_f
            married_male_above_15 = row[5].to_i
            never_married_male_above_15 = row[6].to_i
            percent_never_married_males_above_15 = row[7].to_f
            married_females_above_15 = row[8].to_i
            never_married_females_above_15 = row[9].to_i
            percent_never_married_females_above_15 = row[10].to_f
            total_15to50_gave_birth_past_year = row[11].to_i
            older_3_in_school = row[12].to_i
            older_3_in_highschool = row[13].to_i
            percent_older_3_in_highschool = row[14].to_f
            older_3_in_college_or_graduate = row[15].to_i
            percent_older_3_in_college_or_graduate = row[16].to_f
            total_25_and_older_highschool_grad = row[17].to_i
            percent_25_and_older_highschool_grad = row[18].to_f
            household_with_computer = row[19].to_i
            percent_household_with_computer = row[20].to_f
            MunicipalitySocialDatum.create(name: name, year: year, households: households, family_households: family_households, percent_family_households: percent_family_households, married_male_above_15: married_male_above_15, never_married_male_above_15: never_married_male_above_15, percent_never_married_males_above_15: percent_never_married_males_above_15, married_females_above_15: married_females_above_15, never_married_females_above_15: never_married_females_above_15, percent_never_married_females_above_15: percent_never_married_females_above_15, total_15to50_gave_birth_past_year: total_15to50_gave_birth_past_year, older_3_in_school: older_3_in_school, older_3_in_highschool: older_3_in_highschool, percent_older_3_in_highschool: percent_older_3_in_highschool, older_3_in_college_or_graduate: older_3_in_college_or_graduate, percent_older_3_in_college_or_graduate: percent_older_3_in_college_or_graduate, total_25_and_older_highschool_grad: total_25_and_older_highschool_grad, percent_25_and_older_highschool_grad: percent_25_and_older_highschool_grad, household_with_computer: household_with_computer, percent_household_with_computer: percent_household_with_computer)
        end
    end
end
