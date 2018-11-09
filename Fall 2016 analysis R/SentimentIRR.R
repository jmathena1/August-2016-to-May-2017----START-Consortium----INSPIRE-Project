#IRR for Section 5

library(irr)

irr = read.csv("/Users/Erin/Dropbox/RA Reports/PA paper/Empirics/Section_5/August_6_Review/Cat_IRR.csv")
irr = irr[1:905, 1:8]
ratings <- irr[,0:2]

weights <- read.delim("/Users/Erin/Dropbox/RA Reports/PA paper/Empirics/Section_5/August_6_Review/weights.txt", 
  header = TRUE, sep = ",")
agree <- agree(ratings, tolerance = 0)
agree #86.7% agreement

#Unweighted Kappa for categorical data without logical order
kappa2 <- kappa2(ratings)
kappa2

#Subjects = 904 
#Raters = 2 
#Kappa = 0.776 

#z = 31 
#p-value = 0

#Weighted Kappa From TP FP FN TN
kappa2s <- kappa2(ratings, "squared")
kappa2s

#Subjects = 904 
#Raters = 2 
#Kappa = 0.966 

#z = 29.1 
#p-value = 0