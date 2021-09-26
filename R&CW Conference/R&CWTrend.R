#Load the necessary libraries.
library(tidyverse)
library(dplyr)
library(ggplot2)

#First create the data table.
dat <- read_csv("https://byuistats.github.io/M335/data/rcw.csv", 
                col_types = cols(Semester_Date = col_date(format = "%m/%d/%y"), Semester = col_factor(levels = c("Winter", "Spring", "Fall"))))
#View it to read data.
View(dat)

#Plot the following trends within each department.
ggplot(dat, aes(Semester_Date, Count, colour = Department)) +
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "DepartmentS")




## DISREGARD THE FOLLOWING DATA, IT WAS ONLY TO SHOW INDIVIDUAL LINES
## VIEW MORE INFORMATION FOR STUDYING AT: https://ggplot2.tidyverse.org/

// Create an object for "Chem"
department_1 <- dat %>%
  filter(Department == "Chem") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the Chemistry data set.
View(department_1)
// Graph the following data.
ggplot(department_1, aes(x = Semester_Date, y = Counts, colour = "Chemistry")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "CSEE"
department_2 <- dat %>%
  filter(Department == "CSEE") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the CSEE data set.
View(department_2)
// Graph the following data.
ggplot(department_2, aes(x = Semester_Date, y = Counts, colour = "CSEE")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department")
         
===========
  
// Create an object for "DCM"
department_3 <- dat %>%
  filter(Department == "DCM") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the DCM data set.
View(department_3)
// Graph the following data.
ggplot(department_3, aes(x = Semester_Date, y = Counts, colour = "DCM")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "GEO"
department_4 <- dat %>%
  filter(Department == "GEO") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the GEO data set.
View(department_4)
// Graph the following data.
ggplot(department_4, aes(x = Semester_Date, y = Counts, colour = "Geo")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "Math"
department_5 <- dat %>%
  filter(Department == "Math") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the Math data set.
View(department_5)
// Graph the following data.
ggplot(department_5, aes(x = Semester_Date, y = Counts, colour = "Geo")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "ME"
department_6 <- dat %>%
  filter(Department == "ME") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the DCM data set.
View(department_6)
// Graph the following data.
ggplot(department_3, aes(x = Semester_Date, y = Counts, colour = "ME")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "PHY"
department_7 <- dat %>%
  filter(Department == "PHY") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the DCM data set.
View(department_7)
// Graph the following data.
ggplot(department_7, aes(x = Semester_Date, y = Counts, colour = "PHY")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 

===========
  
// Create an object for "DCM"
department_3 <- dat %>%
  filter(Department == "DCM") %>%
  group_by(Semester_Date) %>%
  summarize(Counts = sum(Count))
// View the DCM data set.
View(department_3)
// Graph the following data.
ggplot(department_3, aes(x = Semester_Date, y = Counts, colour = "DCM")) + 
  geom_line() +
  geom_point() +
  xlab("Semester Dates") +
  ylab("Counts") +
  ggtitle("Department Trend Over Time") + 
  labs(colour = "Department") 