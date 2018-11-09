#This code doesn't work

irr2
irr2 <- irr2$John[irr$John == -2]  <- -1
irr2 <- irr2$John[irr$John == 2]  <- 1
irr2 <- irr2$Erin[irr$Erin == -2]  <- -1
irr2 <- irr2$Erin[irr$Erin == 2]  <- 1

irr2 <- replace(irr2$John, "-2", "-1")
irr2 <- replace(irr2$Erin, "-2", "-1")

#This code is good!  Probably could be made into a for loop

irr2$Dylan[irr2$Dylan == 2] <- 1
irr2$Dylan[irr2$Dylan == -2] <- -1
irr2$Cody[irr2$Cody == 2] <- 1
irr2$Cody[irr2$Cody == -2] <- -1
