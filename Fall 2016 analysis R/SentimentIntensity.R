filename<- read.csv("Kenya13.Jori.csv")
objectivity <- filename[, 1]
sentiment <- filename[, 2]

intense.tweets <- (sentiment == -2 | sentiment == 2)
intense.tweets <- as.numeric(intense.tweets)
sum(intense.tweets)
#optional code
intensity.Nigeria15 <- (sum(intense.tweets) / length(sentiment)) * 100
intensity.Nigeria15
#11.21% - Kenya13, 5.04% - Nigeria15, 3.53% - Zambia15, 4.01% - Botswana14, 16.96% - SouthAfrica14

intense.tweets <- (sentiment == -2 | sentiment == 2 | sentiment == -1 | sentiment == 1)
intense.tweets <- as.numeric(intense.tweets)
sum(intense.tweets)
#optional code
intensity2.Nigeria15 <- (sum(intense.tweets) / 171 ) * 100
intensity2.Nigeria15
#73.8% - Kenya13, 72.9% - Nigeria15, 65.71% - Zambia15, 27.49% - Botswana14, 85.96% - SouthAfrica14 


#Pre and post election tweet intensity
filename<- read.csv("Zambia15.Cody.csv")
objectivity <- filename[, 1]
sentiment <- filename[, 2]

pre.election <- sentiment[1:272]
intense.tweets <- (pre.election == -2 | pre.election == 2)
intense.tweets <- as.numeric(intense.tweets)
sum(intense.tweets)
intensity.pre.election <- (sum(intense.tweets) / length(pre.election)) * 100
intensity.pre.election
#Zambia15 - 10.29%
#Kenya13 - 10.49%
#SouthAfrica14 - 12.23%
#Nigeria15 - 7.06%

post.election <- sentiment[273:length(sentiment)]
intense.tweets <- (post.election == -2 | post.election == 2)
intense.tweets <- as.numeric(intense.tweets)
sum(intense.tweets)
intensity.post.election <- (sum(intense.tweets) / length(post.election)) * 100
intensity.post.election
#Zambia15 - 5.00%
#Kenya13 - 11.95%
#SouthAfrica14 - 6.19%
#Nigeria15 - 2.92%

#significance - paired samples t-test / effect size / power

intensity.pre.election.all <- c(10.29, 10.49, 12.23, 7.06)
intensity.post.election.all <- c(5.00, 11.95, 6.19, 2.92)
intensity.significance <- t.test(intensity.pre.election.all, intensity.post.election.all, paired = TRUE)
intensity.significance
#t =2.07 p-value = 0.1314

library(effsize)
intensity.effect.size <- cohen.d(intensity.pre.election.all, intensity.post.election.all, paired = TRUE)
intensity.effect.size
#d estimate = 1.03 (large)

library(pwr)
pwr.t.test(n = 4, d = 1.03, sig.level = 0.05, type = "paired")
#power = 0.302 - low
