Data\clean\FinalDataBase.dta: Code\Analyzing Data and Exporting Output.do
	wstata -e do $<
	Data\clean\CleanedWDIData.dta : Data\raw\AllCountries_Data.csv Code\CleaningWDIData.do
	Data\clean\CleanedTEAData.dta : Data\raw\TEA RIGHT COUNTRIES.csv Data\clean\CleanedTEAData.dta
	Data\clean\FinalDataBase.dta : Data\clean\CleanedTEAData.dta Data\clean\CleanedWDIData.dta Code\MergingDatas.do
	wstata -e do Code\Analyzing Data and Exporting Output.do
