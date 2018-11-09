library(rdd)
library(rddtools)
filename<- read.csv("Nigeria15.Jori.csv")
date <- filename[, 1]
date <- c(1:495)
objectivity <- filename[, 2]
sentiment <- filename[, 3]

#Package 'rddtools'
IKbandwidth(date, sentiment, cutpoint = 256, kernel = "triangular")
y = sentiment
x = date
DCdensity(date, cutpoint=256, bin = NULL, bw = 4.586499, verbose = TRUE,
          plot = FALSE)
Nigeria15.rdd <- RDestimate(y ~ x, filename, cutpoint = 256, bw = 4.586499, kernel = "triangular")
summary <- summary(Nigeria15.rdd)
plot <- plot(Nigeria15.rdd)

#Package 'rddtools'
Nigeria15.rdd <- rdd_data(y = filename$sentiment, x = date, cutpoint = 256)
summary(Nigeria15.rdd)
plot(Nigeria15.rdd)

reg_para <- rdd_reg_lm(rdd_object = Nigeria15.rdd, order = 4)
plot(reg_para)
#parametric estimation - not useful

bw_ik <- rdd_bw_ik(Nigeria15.rdd)
reg_nonpara <- rdd_reg_np(rdd_object = Nigeria15.rdd, bw = bw_ik)
print(reg_nonpara)
plot(x = reg_nonpara)
# non-parametric estimation - more useful in that it shows a definite change in slope

dens_test(reg_nonpara)
