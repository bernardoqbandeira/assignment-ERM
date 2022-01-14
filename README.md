# The Impact of Entrepreneurship Capital in Economic Performance at Latin America Countries
## Assignment - Empirical Research Methods

### 14-01-2022

### Authors
- Bernardo Bandeira

## Data availability and provenance statements
### Statement about rights
The author(s) of the manuscript have legitimate access to and permission to use the data used in this manuscript.

### Summary of availability
- All data **are** publicly available.

### Details on each data source
- All source data are available publicly with a permissive license.

## Dataset list

| Data file | Source | License |
|-----------|--------|----------|
| `data/raw/AllCountries_Data.csv` | World Development Indicators (WDI) - World Bank | https://www.worldbank.org/en/about/legal/Permissions |
| `data/raw/TEA RIGHT COUNTRIES.csv` | Global Entrepreneurship Monitor (GEM) - World Bank | https://www.worldbank.org/en/about/legal/Permissions|

## Description of programs/code

The project uses GNU Make. To install dependencies, run `make install` from the root of the project folder. To do all data cleaning and analysis steps, run `make`.

- The script `code/CleaningWDIData.do` cleans the WDI main database.
- The script `code/CleaningTEAData.do` cleans the TEA database.
- The script `code/MergingDatas.do` merges the two cleaned datasets.
- The script `Analyzing Data and Exporting Output.do` run the analysis and extract the tables(output).


## Context on the Project

I have chosen the Track 2 for the Assignment

The project I'm working on is called "The Impact of Entrepreneurship Capital in Economic Performance at Latin America Countries".

Studies suggest that entrepreneurship has a positive and significant effect on economic growth. As most of the previous researches focus on nothern and developed countries like those from the OECD, the research tries to look for a different approach investigating the countries in Latin America.

The measurement used for entrepreneurship is called Total Entrepreneurship Activity (TEA).

### Methodology

Using an unbalanced panel data with observation from 2006 -2018 to try to analyze the effect of  Entrepreneurship Capital on economic growth.

Using an Augmented Cobb-Douglas production function with a new endogenous variable that measures Entrepreneurship Capital.

Ln yit = α Ln TEAit + β Ln CapFormit + γ Ln DomSavit + φ Ln GovConsit + εit

Where the dependent variable is the Gross Domestic Product (GDP) at current $US.
The dependent variables are those included in a production function: Capital Formation, Government Consumption, Domestic Savings, and the new variable TEA (Total Entrepreneurial Activity). And are divided by the population between 15-64 years old.

The final sample contains 143 observations from 11 countries in Latin America.
Those countries are: Argentina, Brazil, Chile, Colombia, Guatemala, Jamaica, Mexico, Panama, Peru, Puerto Rico and Uruguay.

### References

- AUDRETSCH, D.B., KEILBACH, M., (2004a). Does entrepreneurship capital matter? Entrep. Theory. Pract. 28 (5), 419–429.
- AUDRETSCH, D.B., KEILBACH, M., (2005). Entrepreneurship capital and regional growth. Ann. Reg. Sci. 39 (3), 457–46
- BAUMOL W. J. (2002). Free Market Innovation Machine: Analysing the Growth Miracle of Capitalism. Princeton University Press, Princeton.
- REYNOLDS, P.D., CAMP, S.M., BYGRAVE, W.D., AUTIO, E., HAY, M., (2002). Global Entrepreneurship Monitor Global 2002 Executive Report. Kaufman Center, Kansas City.
- SAXENIAN A. (1994). Regional Advantage. Harvard University Press, Cambridge, MA.
- SOLOW R. (1956). A contribution to the theory of economic growth, Quarterly Journal of Economics 70, 65–94.
- URBANO, D., & APARICIO, S. (2016). Entrepreneurship capital types and economic growth: international evidence. Technological Forecasting and Social Change, 102, 34–44.




