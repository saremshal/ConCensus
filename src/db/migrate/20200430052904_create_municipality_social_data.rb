class CreateMunicipalitySocialData < ActiveRecord::Migration[6.0]
  def change
    create_table :municipality_social_data do |t|
      t.string :name
      t.string :year
      t.integer :households
      t.integer :family_households
      t.float :percent_family_households
      t.integer :married_male_above_15
      t.integer :never_married_male_above_15
      t.float :percent_never_married_males_above_15
      t.integer :married_females_above_15
      t.integer :never_married_females_above_15
      t.float :percent_never_married_females_above_15
      t.integer :total_15to50_gave_birth_past_year
      t.integer :older_3_in_school
      t.integer :older_3_in_highschool
      t.float :percent_older_3_in_highschool
      t.integer :older_3_in_college_or_graduate
      t.float :percent_older_3_in_college_or_graduate
      t.integer :total_25_and_older_highschool_grad
      t.float :percent_25_and_older_highschool_grad
      t.integer :household_with_computer
      t.float :percent_household_with_computer

      t.timestamps
    end
  end
end
