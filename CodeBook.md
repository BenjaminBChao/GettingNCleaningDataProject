---
title: "CodeBook"
author: "Benjamin Chao"
date: "July 27, 2014"

---

Partial list of the Consolidated Dataset that combined training and test data.

str(ConsolidatedData)
Classes ‘data.table’ and 'data.frame':    10299 obs. of  563 variables:
 $ subject    : int  1 1 1 1 1 1 1 1 1 1 ...
 $ activityNum: int  5 5 5 5 5 5 5 5 5 5 ...
 $ V1         : num  0.257 0.286 0.275 0.27 0.275 ...
 $ V2         : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ V3         : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ V4         : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ V5         : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ V6         : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ V7         : num  -0.953 -0.987 -0.994 -0.995 -0.994 ...
 $ V8         : num  -0.925 -0.968 -0.971 -0.974 -0.966 ...
 $ V9         : num  -0.674 -0.946 -0.963 -0.969 -0.977 ...
 $ V10        : num  -0.894 -0.894 -0.939 -0.939 -0.939 ...
 $ V11        : num  -0.555 -0.555 -0.569 -0.569 -0.561 ...
 $ V12        : num  -0.466 -0.806 -0.799 -0.799 -0.826 ...
 $ V13        : num  0.717 0.768 0.848 0.848 0.849 ...
 $ V14        : num  0.636 0.684 0.668 0.668 0.671 ...
 $ V15        : num  0.789 0.797 0.822 0.822 0.83 ...
 $ V16        : num  -0.878 -0.969 -0.977 -0.974 -0.975 ...
 $ V17        : num  -0.998 -1 -1 -1 -1 ...
 $ V18        : num  -0.998 -1 -1 -0.999 -0.999 ...
 $ V19        : num  -0.934 -0.998 -0.999 -0.999 -0.999 ...
 $ V20        : num  -0.976 -0.994 -0.993 -0.995 -0.993 ...
 $ V21        : num  -0.95 -0.974 -0.974 -0.979 -0.967 ...
 $ V22        : num  -0.83 -0.951 -0.965 -0.97 -0.976 ...
 $ V23        : num  -0.168 -0.302 -0.618 -0.75 -0.591 ...
 $ V24        : num  -0.379 -0.348 -0.695 -0.899 -0.74 ...
 $ V25        : num  0.246 -0.405 -0.537 -0.554 -0.799 ...
 $ V26        : num  0.521 0.507 0.242 0.175 0.116 ...
 $ V27        : num  -0.4878 -0.1565 -0.115 -0.0513 -0.0289 ...
 $ V28        : num  0.4823 0.0407 0.0327 0.0342 -0.0328 ...
 $ V29        : num  -0.0455 0.273 0.1924 0.1536 0.2943 ...
 $ V30        : num  0.21196 0.19757 -0.01194 0.03077 0.00063 ...
 $ V31        : num  -0.1349 -0.1946 -0.0634 -0.1293 -0.0453 ...
 $ V32        : num  0.131 0.411 0.471 0.446 0.168 ...
 $ V33        : num  -0.0142 -0.3405 -0.5074 -0.4195 -0.0682 ...
 $ V34        : num  -0.106 0.0776 0.1885 0.2715 0.0744 ...
 $ V35        : num  0.0735 -0.084 -0.2316 -0.2258 0.0271 ...
 $ V36        : num  -0.1715 0.0353 0.6321 0.4164 -0.1459 ...
 $ V37        : num  0.0401 -0.0101 -0.5507 -0.2864 -0.0502 ...
 $ V38        : num  0.077 -0.105 0.3057 -0.0638 0.2352 ...
 $ V39        : num  -0.491 -0.429 -0.324 -0.167 0.29 ...
 $ V40        : num  -0.709 0.399 0.28 0.545 0.458 ...
 $ V41        : num  0.936 0.927 0.93 0.929 0.927 ...
 $ V42        : num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
 $ V43        : num  0.115 0.153 0.146 0.143 0.138 ...
 $ V44        : num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
 $ V45        : num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
 $ V46        : num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
 $ V47        : num  -0.93 -0.989 -0.996 -0.993 -0.996 ...
 $ V48        : num  -0.938 -0.983 -0.989 -0.971 -0.971 ...
 $ V49        : num  -0.606 -0.965 -0.98 -0.993 -0.969 ...
 $ V50        : num  0.906 0.856 0.856 0.856 0.854 ...
 $ V51        : num  -0.279 -0.305 -0.305 -0.305 -0.313 ...
 $ V52        : num  0.153 0.153 0.139 0.136 0.134 ...
 $ V53        : num  0.944 0.944 0.949 0.947 0.946 ...
 $ V54        : num  -0.262 -0.262 -0.262 -0.273 -0.279 ...
 $ V55        : num  -0.0762 0.149 0.145 0.1421 0.1309 ...
 $ V56        : num  -0.0178 0.0577 0.0406 0.0461 0.0554 ...
 $ V57        : num  0.829 0.806 0.812 0.809 0.804 ...
 $ V58        : num  -0.865 -0.858 -0.86 -0.854 -0.843 ...
 $ V59        : num  -0.968 -0.957 -0.961 -0.963 -0.965 ...
 $ V60        : num  -0.95 -0.988 -0.996 -0.992 -0.996 ...
 $ V61        : num  -0.946 -0.982 -0.99 -0.973 -0.972 ...
 $ V62        : num  -0.76 -0.971 -0.979 -0.996 -0.969 ...
 $ V63        : num  -0.425 -0.729 -0.823 -0.823 -0.83 ...
 $ V64        : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
 $ V65        : num  0.219 -0.465 -0.53 -0.7 -0.302 ...
 $ V66        : num  -0.43 -0.51 -0.295 -0.343 -0.482 ...
 $ V67        : num  0.431 0.525 0.305 0.359 0.539 ...
 $ V68        : num  -0.432 -0.54 -0.315 -0.375 -0.596 ...
 $ V69        : num  0.433 0.554 0.326 0.392 0.655 ...
 $ V70        : num  -0.795 -0.746 -0.232 -0.233 -0.493 ...
 $ V71        : num  0.781 0.733 0.169 0.176 0.463 ...
 $ V72        : num  -0.78 -0.737 -0.155 -0.169 -0.465 ...
 $ V73        : num  0.785 0.749 0.164 0.185 0.483 ...
 $ V74        : num  -0.984 -0.845 -0.429 -0.297 -0.536 ...
 $ V75        : num  0.987 0.869 0.44 0.304 0.544 ...
 $ V76        : num  -0.989 -0.893 -0.451 -0.311 -0.553 ...
 $ V77        : num  0.988 0.913 0.458 0.315 0.559 ...
 $ V78        : num  0.981 0.945 0.548 0.986 0.998 ...
 $ V79        : num  -0.996 -0.911 -0.335 0.653 0.916 ...
 $ V80        : num  -0.96 -0.739 0.59 0.747 0.929 ...
 $ V81        : num  0.072 0.0702 0.0694 0.0749 0.0784 ...
 $ V82        : num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
 $ V83        : num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
 $ V84        : num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
 $ V85        : num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
 $ V86        : num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
 $ V87        : num  -0.916 -0.969 -0.991 -0.99 -0.991 ...
 $ V88        : num  -0.937 -0.974 -0.973 -0.973 -0.977 ...
 $ V89        : num  -0.949 -0.979 -0.975 -0.978 -0.985 ...
 $ V90        : num  -0.903 -0.915 -0.992 -0.992 -0.994 ...
 $ V91        : num  -0.95 -0.981 -0.975 -0.975 -0.986 ...
 $ V92        : num  -0.891 -0.978 -0.962 -0.962 -0.986 ...
 $ V93        : num  0.898 0.898 0.994 0.994 0.994 ...
 $ V94        : num  0.95 0.968 0.976 0.976 0.98 ...
 $ V95        : num  0.946 0.966 0.966 0.97 0.985 ...
 $ V96        : num  -0.931 -0.974 -0.982 -0.983 -0.987 ...
 $ V97        : num  -0.995 -0.998 -1 -1 -1 ...
  [list output truncated]
  
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean 