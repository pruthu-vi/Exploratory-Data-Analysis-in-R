library(datasets)

hist(airquality$Ozone, col = "purple")
rug(airquality$Ozone)

with(airquality, plot(Wind, Ozone, col = "red"))

boxplot(Ozone ~ Month, airquality, col = "blue")

par(bg = "#ACDDDE", las = 2, )
boxplot(Solar.R ~ Month, airquality, col = "blue")

par("pch")
par("lty")
par("col")
par("las")
par("bg")
par("mar")
par("mfrow")
par("mfcol")

with(airquality, plot(Wind, Ozone))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", col = c("blue", "red"), pch = 1, bg = "#ACDDDE",
       legend = c("Month May", "Other Months"))


mod <- lm(Ozone ~ Wind, airquality)
abline(mod, lwd = 2, col = "green")