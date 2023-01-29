# README #

### What is this repository for? ###

* Stata package ARTs
* Implements approximate randomization tests for inference with a small number of clusters
* Canay, Romano, and Shaikh (2017): Randomization Tests Under an Approximate Symmetry Assumption
* Cai, Canay, Kim, and Shaikh (2021): A User’s Guide to Approximate Randomization Tests in Regressions with a Small Number of Clusters 

### Authors of the papers ###
* Ivan A. Canay, Northwestern University
* Joseph P. Romano, Stanford University
* Azeem M. Shaikh, University of Chicago
* Yong Cai, Northwestern University
* Deborah Kim, Northwestern University

### Contributors of the package ###
* Ivan A. Canay, Northwestern University
* Vishal Kamat, Northwestern University 
* Azeem M. Shaikh, University of Chicago
* Joseph P. Romano, Stanford University
* Yong Cai, Northwestern University
* Deborah Kim, Northwestern University

### How do I get set up? ###

 Download files in working directory, and run the following command before implementing:
 
  . capture program drop art

 The file "art_example.do" illustrates the implementation for some 
 results in Canay, Romano & Shaikh (2017) on the dataset from 
 Angrist and Lavy (2009). The dataset is contained in "base01.dta". 
 The file "art_tutorial.pdf" also provides a brief tutorial on the 
 implementation of the command. For further help type:

 . help art

### Who do I talk to? ###

* Repository owner: <iacanay@northwestern.edu>
* Repository admin: <yongcai2023@u.northwestern.edu>

### Files ###

art.ado
art.hlp
art_example.do
art_tutorial.pdf
base01.dta

### LICENSE

art-STATA is released under the [MIT LICENSE](https://github.com/iacanay/arts-stata/blob/master/LICENSE)
