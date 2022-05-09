#reading the data
library(olsrr)
data=as.data.frame(Regression)
##Step 1
trialA <- lm(Y ~ A + A:B + A:C + A:D + A:E + A:F, data = data)
pA <- ols_step_both_p(trialA,details=T)
pA
trialB <- lm(Y ~ B + B:A + B:C + B:D + B:E + B:F, data = data)
pB <- ols_step_both_p(trialB, details =T)
pB
trialC <- lm(Y ~ C + C:A + C:B + C:D + C:E + C:F, data = data)
pC <- ols_step_both_p(trialC, details =T)
pC
trialD <- lm(Y ~ D + D:A + D:B + D:C + D:E + D:F, data = data)
pD <- ols_step_both_p(trialD, details =T)
pD
trialE <- lm(Y ~ E + E:A + E:B + E:C + E:D + E:F, data = data)
pE <- ols_step_both_p(trialE, details =T)
pE
trialF <- lm(Y ~ F + F:A + F:B + F:C + F:D + F:E, data = data)
pF <- ols_step_both_p(trialF, details =T)
pF
##Step 2(iteration1)
trial2 <- lm(Y ~ A + A:D + A:F + B + C+ C:D +D+ D:C +E+ E:B +F+ F:B , data = data)
p2 <- ols_step_both_p(trial2, details =T)
p2
##Step 3(iteration1)
trial3 <- lm(Y ~ A:C+A:D+A:F+C:D+C:F+D:F, data = data)
p3 <- ols_step_both_p(trial3, details =T)
p3
##Step 2(iteration2)
trial22 <- lm(Y ~A+B+C+D+E+F+C:D , data = data)
p22 <- ols_step_both_p(trial22, details =T)
p22#at this stage we are only getting only one main effect as important
#we can conclude that A is our only important factor

