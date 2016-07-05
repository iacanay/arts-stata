# README #

### What is this repository for? ###

* Stata package CRS
* Implements randomization tests for inference with few clusters
* Canay, Romano, and Shaikh (2015): Randomization Tests Under an Approximate Symmetry Assumption

### Authors of the paper ###
* Ivan A. Canay, Northwestern University
* Joseph P. Romano, Stanford University
* Azeem M. Shaikh, University of Chicago

### Contributors of the package ###
* Ivan A. Canay, Northwestern University
* Vishal Kamat, Northwestern University 

### How do I get set up? ###

 Download files in working directory, and run the following command before implementing:
 
  . capture program drop crs

 The file "crs_example.do" illustrates the implementation for some 
 results in Canay, Romano & Shaikh (2015) on the dataset from 
 Angrist and Lavy (2009). The dataset is contained in "base01.dta". 
 The file "crs_tutorial.pdf" also provides a brief tutorial on the 
 implementation of the command. For further help type:

 . help crs

### Who do I talk to? ###

* Repository owner: <iacanay@northwestern.edu>
* Repository admin: <v.kamat@u.northwestern.edu>

### Files ###

crs.ado
crs.hlp
crs_example.do
crs_tutorial.pdf
base01.dta