# solution 1
fbnums <- 1:100
output <- vector()

for (i in fbnums) {
  output[i] <- ""

  if (i %% 3 == 0) {output[i] <- paste0(output[i], "Fizz")}
  if (i %% 5 == 0) {output[i] <- paste0(output[i], "Buzz")}
  if (output[i] == "") {output[i] <- i}
}

print(output)

# solution 2

install.packages('tidyverse')
library(tidyverse)

fbnums <- 1:100

output <- case_when(fbnums %% 3 == 0 ~ "Fizz", # lowest common factor of 3 and 5
                    fbnums %% 3 == 0 ~ "Fizz",
                    fbnums %% 5 == 0 ~ "Buzz",
                    TRUE ~ as.character(fbnums))

print(output)
