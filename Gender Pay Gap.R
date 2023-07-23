# Load necessary packages
library(ggplot2)
library(readr)

# Set theme
theme_set(theme_bw())

# Load the data
data <- read_csv("freelancerdata.csv")

# Convert Gender and Hourly_Payment to factors
data$Gender <- as.factor(data$Gender)
data$Hourly_Payment <- as.numeric(data$Hourly_Payment)

# Create box plot
ggplot(data, aes(x=Gender, y=Hourly_Payment, fill=Gender)) +
  geom_boxplot(width=0.15, outlier.shape = NA) +
  labs(x="Gender", y="Hourly Payment $") +
  ggtitle("Gender pay gap among freelancers") +
  theme(plot.title = element_text(hjust = 0.5)) # Center the plot title
