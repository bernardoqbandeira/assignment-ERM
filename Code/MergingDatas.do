*Merging Databases Files

cd "C:\Users\Bernardo Bandeira\Documents\CEU\Courses\2ndYear\Empirical_Methods\assignment"

*Remember to change for your path where the repository is.

use "Data\clean\CleanedWDIData.dta", clear

merge 1:1 id using "Data\clean\CleanedTEAData.dta"
drop _merge countryiso3 year timecode
rename time year

save "Data\clean\FinalDataBase.dta", replace
