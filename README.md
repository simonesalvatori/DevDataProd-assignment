# Social Mobility Predictor

#### Description
  This shiny application implements a predictor of social mobility. More precisely, given the social status of a father's occupation (input 1) it provides the probability of a given social status (also provided as input 2) of the son's occupation.  
  The Occupational Status is ranked on a scale from 1 to 8, where 1 is the highest social status and 8 the lowest.  

#### Data
  The data is based on the cross-classification of a sample of British males according to each subject's occupational status and his father's occupational status (1949).  
  Data Source: Goodman, L. A. (1979) Simple Models for the Analysis of Association in Cross-Classifications having Ordered Categories. J. Am. Stat. Assoc., 74 (367), 537552  
  The table is part of the Base R datasets, included in the standard distribution of R.  
  The intergenerational social correlation at a glance in this plot:
  ![plot of chunk unnamed-chunk-1](./social_mobility_predictor_documentation_files/figure-html/unnamed-chunk-1.png) 
  

#### Usage

In the Predictor panel:

1. select the Father's Occupational Status

2. select the Son's Occupational Status

3. read on the right the predicted probability of that combination

  
#### Reference
occupationalStatus {datasets}  
%http://stat.ethz.ch/R-manual/R-patched/library/datasets/html/occupationalStatus.html
