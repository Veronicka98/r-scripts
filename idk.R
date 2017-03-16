library(MASS)
data(survey)

hand <- na.omit(survey$W.Hnd)

table(hand)
sum(hand == "Left")/length(hand)
sum(hand == "Right")/length(hand)

age <- survey$Age
sum(age <= 18)
83/length(age)


sum(na.omit(survey$W.Hnd == "Left" && survey$Sex == "Male"))
