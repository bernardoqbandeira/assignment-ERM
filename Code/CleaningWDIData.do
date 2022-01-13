*Cleaning the main data
import delimited "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\raw\AllContries_Data.csv", clear

sort countryname time
drop in 1/5
drop gdppercapitagrowthannualnygdppca gdpgrowthannualnygdpmktpkdzg gdppercapitacurrentusnygdppcapcd
destring generalgovernmentfinalconsumptio, generate(govconsump) force
drop generalgovernmentfinalconsumptio

gen lgdp = log(gdpcurrentusnygdpmktpcd)
gen lgovconsump = log(govconsump)
gen lcapform = log(grosscapitalformationcurrentusne)
gen ldomsav = log(grossdomesticsavingscurrentusnyg)

gen id = _n

save "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\raw\CleanedWDIData.dta", replace



