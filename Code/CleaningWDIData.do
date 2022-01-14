*Cleaning the main data

cd "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment"

*Remember to change for your path where the repository is.

import delimited "Data\raw\AllCountries_Data.csv", clear

sort countryname time
drop in 1/5
drop gdppercapitagrowthannualnygdppca gdpgrowthannualnygdpmktpkdzg gdppercapitacurrentusnygdppcapcd
destring generalgovernmentfinalconsumptio, generate(govconsump) force
drop generalgovernmentfinalconsumptio

rename populationages1564totalsppop1564 popul
rename gdpcurrentusnygdpmktpcd gdp
rename grosscapitalformationcurrentusne capform
rename grossdomesticsavingscurrentusnyg domsav

gen lgdp = log(gdp/popul)
gen lgovconsump = log(govconsump/popul)
gen lcapform = log(capform/popul)
gen ldomsav = log(domsav/popul)

gen id = _n

save "Data\clean\CleanedWDIData.dta", replace


