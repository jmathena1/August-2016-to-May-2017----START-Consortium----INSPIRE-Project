#Objectivity

irr2 = read.csv(file = "IRR2.Cody.Dylan.Zambia15.csv")
irr2 = irr2[0:312, 0:3]
ratings = irr2[,2:3]
weights <- read.delim("IRR.Dylan.Danielle.SouthAfrica.csv", header = TRUE, sep = ",")
agree <- agree(ratings, tolerance = 0)
agree
#61.7% agreement

kappa2 <- kappa2(ratings)
kappa2
#Cohen's Kappa for 2 Raters (Weights: unweighted)

#Subjects = 227 
#Raters = 2 
#Kappa = 0.256 

#z = 4.71 
#p-value = 2.49e-06 

kappa2s <- kappa2(ratings, "squared")
kappa2s
#Cohen's Kappa for 2 Raters (Weights: squared)

#Subjects = 227 
#Raters = 2 
#Kappa = 0.256 

#z = 4.71 
#p-value = 2.49e-06 

#Polarity
irr2 = read.csv(file = "IRR2.Erin.John.Nigeria11.csv")
irr2 = irr2[1:228, 1:3]
ratings2 = irr2[,2:3]
weights2 <- read.delim("IRR2.Erin.John.Nigeria11.csv", header = TRUE, sep = ",")
agree2 <- agree(ratings2, tolerance = 0)
# Percentage agreement (Tolerance=0) -2 to +2

#Subjects = 227 
#Raters = 2 
#%-agree = 51.1

# Percentage agreement (Tolerance=0) COLLAPSED SCALE -1 to +1

#Subjects = 227 
#Raters = 2 
#%-agree = 55.5 
#kappa2P <- kappa2(ratings)
#kappa2P

# Cohen's Kappa for 2 Raters (Weights: unweighted)

#Subjects = 227 
#Raters = 2 
#Kappa = 0.256 

#z = 4.71 
#p-value = 2.49e-06 

kappa2Ps <- kappa2(ratings, "squared")
kappa2Ps

# Cohen's Kappa for 2 Raters (Weights: squared)

#Subjects = 227 
#Raters = 2 
#Kappa = 0.256 

#z = 4.71 
#p-value = 2.49e-06