*Cleaning TEA Data

import delimited "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\raw\TEA RIGHT COUNTRIES.csv", clear

drop indicatorid subindicatortype indicator
reshape long v, i(countryname) j(year)

replace year = 2006 if year==6
replace year = 2007 if year==7
replace year = 2008 if year==8
replace year = 2009 if year==9
replace year = 2010 if year==10
replace year = 2011 if year==11
replace year = 2012 if year==12
replace year = 2013 if year==13
replace year = 2014 if year==14
replace year = 2015 if year==15
replace year = 2016 if year==16
replace year = 2017 if year==17
replace year = 2018 if year==18

rename v TEA

gen ltea = log(TEA)

gen id = _n

save "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\clean\CleanedTEAData.dta", replace
