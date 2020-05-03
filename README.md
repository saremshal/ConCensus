# README

# ConCensus - Data Visualization for Municipalities in New Jersey

### Install this repository: 

`git clone https://github.com/TCNJSwEngg/S20-T11.git`

***IF YOU DO NOT USE GIT CLONE, THE ENTIRE GIT SYSTEM WILL BREAK! USE CLONE!***


Once cloned, navigate to the S20-T11/src/ directory and install the project dependencies. 

`bundle install`
`rails db:migrate`

In order to populate the DB with the Municipality Social Data, do the following:
1. Run the rails server with `rails server --binding YOUR_IP_ADDR`
2. Navigate to `hostname:3000/municipality_social_data`
3. Select Import CSV button and upload the appropriate CSV file. 

The Census Data was acquired from the ACS 5 Year Survey 2014-2018.

Colorlib Templates were used for the Home Page and the Dashboard Pages.
Genetellela Admin Template: https://colorlib.com/polygon/gentelella/index.html
Imagine Template: https://colorlib.com/preview/theme/imagine/index.html
