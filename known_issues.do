//Known Issues in CRS Stata Package (shown using Angrist and Lavy (2009)

//----Not enough variation for every independent variable-----------------------
crs zakaibag treated semarab semrel, g(group) l(90) m(regress)
mat list r(b_group)                                                            //Returns matrix of estimates within each group
//Observe that many estimates are 0 indicating omitted in regression due to perfect multicollinearity

//----Error caused due to accidently using the same variable twice with margins-
crs zakaibag treated semarab semarab semrel, g(group) l(90) m(logit) margins
//NOTE: Not caused when used without margins options, automatically omitted in that case.
