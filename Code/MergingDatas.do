*Merging Databases Files

use "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\clean\CleanedWDIData.dta", clear

merge 1:1 id using "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\clean\CleanedTEAData.dta"
drop _merge countryiso3 year timecode
rename time year

save "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment\Data\clean\FinalDataBase.dta", replace
