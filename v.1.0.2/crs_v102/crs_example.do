clear
set more off
capture log close
cd ".."                                                                         //Change to working directory
log using "crs_example.smcl", replace 

********************************************************************************
//----Canay, Romano & Shaikh(2015) randomization test on Angrist and Lavy(2009)
********************************************************************************

//----Load dataset used in Angrist and Lavy(2009)-------------------------------

use base01.dta, clear 

//----Generate group variable as per Canay, Romano & Shaikh(2015)---------------

gen group = 1

replace group = 2 if pair == 2 | pair == 4
replace group = 3 if pair == 5 | pair == 8
replace group = 4 if pair == 7
replace group = 5 if pair == 9 | pair == 10
replace group = 6 if pair == 11
replace group = 7 if pair == 12 | pair == 13
replace group = 8 if pair == 14 | pair == 15
replace group = 9 if pair == 16 | pair == 17
replace group = 10 if pair == 18 | pair == 20
replace group = 11 if pair == 19

//----Load CRS Stata package----------------------------------------------------

capture program drop crs

//----Generate additional covariates as in Angrist and Lavy(2009)---------------

gen ls25=0	
gen ls50=0
gen ls75=0
gen ls100=0

sum lagscore, detail
replace ls25 =1 if lagscore<r(p25)
replace ls50 =1 if ls25==0 & lagscore<r(p50)
replace ls75 =1 if ls50+ls25==0 & lagscore<r(p75)
replace ls100=1 if ls50+ls25+ls75==0

gen ah4=m_ahim>=4

//----Implement CRS to compute new confidence intervals-------------------------

//----Results using sample of boys + girls--------------------------------------
//----OLS-----------------------------------------------------------------------
//----Table 3 in Canay, Romano & Shaikh (2015)----------------------------------
crs zakaibag treated semarab semrel, cluster(group) l(90) m(regress) report(treated)
crs zakaibag treated semarab semrel, cluster(group) l(95) m(regress) report(treated)
crs zakaibag treated semarab semrel ls50 ls75 ls100 educav educem ah4 ole5, cluster(group) l(90) m(regress) report(treated)
crs zakaibag treated semarab semrel ls50 ls75 ls100 educav educem ah4 ole5, cluster(group) l(95) m(regress) report(treated)

//----Results using sample of girls---------------------------------------------
//----OLS-----------------------------------------------------------------------
//----Table 4 (School cov. only) in Canay, Romano & Shaikh (2015)---------------
crs zakaibag treated semarab semrel if boy == 0, cluster(group) l(90) m(regress) report(treated)
crs zakaibag treated semarab semrel if boy == 0, cluster(group) l(95) m(regress) report(treated)

log off 

