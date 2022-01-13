*Cleaning the main data
import delimited "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\raw\AllContries_Data.csv", clear

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

save "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\clean\CleanedWDIData.dta", replace


