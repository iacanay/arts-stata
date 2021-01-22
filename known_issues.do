//Known Issues in ARTs Stata Package (shown using Angrist and Lavy (2009)

//----Not enough variation for every independent variable-----------------------
art zakaibag treated semarab semrel, g(group) l(90) m(regress)
mat list r(b_group)                                                            //Returns matrix of estimates within each group
//Observe that many estimates are 0 indicating omitted in regression due to perfect multicollinearity

