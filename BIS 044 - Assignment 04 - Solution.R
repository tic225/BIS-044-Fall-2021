library(readxl)
library(tidyverse)

# Clear out Console and Enviroment
rm(list=ls(all=TRUE))
cat("\014")


df <- read_excel("dataset1.xls")

count(df, df$Title)
df$Title <- replace(df$Title, df$Title=="Aldermen", "Alderman")
df$Title <- replace(df$Title, df$Title=="Clerk", "Clerk of Court")
df$Title <- replace(df$Title, df$Title=="Constable(s)", "Constable")
df$Title <- replace(df$Title, df$Title=="Council Member at Large", "Council Member")
df$Title <- replace(df$Title, df$Title=="Council Member I", "Council Member")
df$Title <- replace(df$Title, df$Title=="Council Member II", "Council Member")
df$Title <- replace(df$Title, df$Title=="Council Member III", "Council Member")
df$Title <- replace(df$Title, df$Title=="Council Member(s)", "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilman", "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilman at Large", "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilmember", "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilmember at Large", "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilmen", "Council Member")
df$Title <- replace(df$Title, df$Title=="Judge, Court of Appeal", "Judge")
df$Title <- replace(df$Title, df$Title=="Judge, Family Court", "Judge")
df$Title <- replace(df$Title, df$Title=="Associate Justice", "Judge")
df$Title <- replace(df$Title, df$Title=="City Judge", "Judge")
df$Title <- replace(df$Title, df$Title=="City Judge, City Court", "Judge")
df$Title <- replace(df$Title, df$Title=="District Judge", "Judge")
df$Title <- replace(df$Title, df$Title=="Justice of the Peace(s)", "Justice of the Peace")
df$Title <- replace(df$Title, df$Title=="Justice of the Peace, Parishwide", "Justice of the Peace")
df$Title <- replace(df$Title, df$Title=="Mayor-President", "Mayor")

results <- count(df, df$Title)
View(results)



