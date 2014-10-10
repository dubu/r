x = c(1:10)
y = x*2
plot(x,y)

X = c(0,1,2,3,4)
Y= c(3,4,5,6,7)

XYlm = lm(Y~X)
XYcoef = coef(XYlm)
print(summary(XYlm))
par(mfrow=c(2,2))
plot(XYlm)


plot(rnorm(100), type="l", col="gold")

hist(rnorm(100))


df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),
                 y = rnorm(30))
# Compute sample mean and standard deviation in each group
library(plyr)
ds <- ddply(df, .(gp), summarise, mean = mean(y), sd = sd(y))

# Declare the data frame and common aesthetics.
# The summary data frame ds is used to plot
# larger red points in a second geom_point() layer.
# If the data = argument is not specified, it uses the
# declared data frame from ggplot(); ditto for the aesthetics.
ggplot(df, aes(x = gp, y = y)) +
  geom_point() +
  geom_point(data = ds, aes(y = mean),
             colour = 'red', size = 3)


# Use data from data.frame
qplot(mpg, wt, data=mtcars)

qplot(mpg, wt, data=mtcars, colour=cyl)

