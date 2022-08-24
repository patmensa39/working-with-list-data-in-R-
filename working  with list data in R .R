# working  with list data in R 
### make sure to install all the packages below. 
pacman::p_load(pacman, tidyverse)

philant <- list( 
  c(1:5), 
  c("R", "Python", "Stata", "SQL", "Power Bi" ),
  c(TRUE, TRUE, FALSE, FALSE, TRUE)) %>% 
  print()
philant

### Saving it as tiblle 
data <- as_tibble(philant, .name_repair = "unique") %>% print()
view(data)
### Renaming the columns 
data <- data %>% 
  rename(ID = "...1") %>%
  rename(Language = "...2") %>%
  rename(Fluent = "...3") %>% 
  print()

view(data)

### how many languages does the person know
data %>% select(Fluent) %>% table()
data %>% filter(Fluent == "TRUE")
sum(data$Fluent)

### which language does the person knows 
data %>% filter(Fluent == "TRUE") %>% 
  select(Language)
