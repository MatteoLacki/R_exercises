1. Draw two vectors x and y of the length 100 (you may use the function rnorm())
   Then fit the linear regression model of the form y~x.
   Check class of resulting object
   Is it class S3 or S4? Done.

2. The function summary.lm() is an implementation of generic summary(), specialized for objects of the class lm.
   Check the class of the outcome of the summary.lm() (use summary(lm(...))) Done.

3. Outcomes  from summary.lm() are printed by an implementation of generic print() 
   what is the name of the specific version? Done: it is stats:::print.summary.lm
   
4. Write your own version of print.summary.lm().
   This function should present coefficients and p-values from summary.lm object in some pretty way.
   Partially done. 

5. Add the graphical presentation of coefficients to the print.summary.lm(), 
   moreover add comments that will be generated in an automated way
   e.g. if p-value is <0.05 add a comment that this variable is significant, or list all significant variables in the order of p-values

6. Use the wilcox.test() function or t.test() function to compare means or medians for vectors x and y.
   Check the class of resulting object.

7. Write your own version of the function print.htest(), translate english description into your native language.

8. Create function rysuj() and make it generic. Write a specialized version of this function for summary.lm class.
   So the same effect as in 5 should be obtained with
   rysuj(summary(lm(y~x)))

9. Repeat step 8 with the use of classes S4.
   use new(), setClass(), setMethod() functions for some artificially named class that will represent the relation between two continuous variables.
   Object of the new class should contain two vectors. A generic rysuj() function should work as in point 8.
