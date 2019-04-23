#importing stringr library
library(stringr)

#importing USArrests state names
states <- rownames(USArrests)
states

#vowels are there in the names of USA States
vowl_count <- str_count(tolower(states), pattern = "[aeiou]")

#Create dataframe with names of states and vowel count
vowl_no <- data.frame(states, vowl_count)

#Visualize the vowels distribution.
barplot(vowl_no$vowl_count, names.arg = vowl_no$states, las =2, cex.names = 0.5,
       xlab = "Name of States", ylab = "Count of Vowel")

