*Analyzing the data

cd "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment"

*Remember to change for your path where the repository is.

use "Data\clean\FinalDataBase.dta", clear

ssc install asdoc

gen GDP = gdp/1000000
gen Capital_Form = capform /1000000
gen Gov_Cons = govconsump /1000000
gen Domestic_Sav = domsav  /1000000
gen Population = popul/1000000


asdoc sum GDP TEA Capital_Form Gov_Cons Domestic_Sav Population, replace save(Output\Descriptive_Statistics.doc) dec(2)) title(Descriptive Statistics)  
asdoc, text(Values in Millions and in Current US$) append fs(10)

rename lgdp LnGDP
rename lgovconsump LnGovConsump
rename lcapform LnCapForm
rename ltea LnTEA
rename ldomsav LnDomesticSav

asdoc reg LnGDP LnTEA LnCapForm LnGovConsump LnDomesticSav, robust replace save(Output\Regression_Results.doc) title(Regression Results)  
