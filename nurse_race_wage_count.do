clear
 use "\\apporto.com\dfs\SMU\Users\abhishiktak_smu\Desktop\nurse_race_wage_count.dta"

destring avgwage, replace force

destring count, replace force
 replace race = "White" in 1
 replace race = "Black" in 2
 replace race = "American-Indian" in 3
 replace race = "Alaska Native" in 4
 replace race = "Some Other" in 8
 replace race = "Native Hawaiian and Other Pacific Islander " in 7
 replace race = "Asian " in 6
 replace race = "American Indian and/or Alaska Native tribes" in 5
 replace race = "American Indian and/or Alaska Native " in 5

graph hbar avgwage, over(race) title("Average Wage of Nurses by Race, 2022")
 graph pie count, over(race) title("Racial Composition of Nurses, 2022")
 

