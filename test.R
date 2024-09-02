# Load Libraries
library(tidyverse)
library(scholar)

# Obtain Author's ID
vin <- get_scholar_id(first_name = "Vincent", 
                      last_name = "Were", 
                      affiliation = NA)
# Extract Citations
citations <- get_citation_history(vin)

# Plot trend of citations 
citations %>% 
  ggplot(aes(x = year, y = cites)) + 
  geom_line() + 
  geom_point()+
  scale_x_continuous(breaks = unique(citations$year))+
  scale_y_continuous(breaks = seq(from = 0, to = max(citations$cites), by = 20))+
  geom_text(label = citations$cites,
            nudge_x = 0.25, nudge_y = 0.1, 
            check_overlap = TRUE,
            size = 2.5)+
  labs(title = "Citations of Publications by Dr.Vincent Were",
       x = "Year",
       y = "Citations",
       caption = "Source: Google Scholar")+
  theme(panel.border = element_blank(), 
        panel.background = element_blank(),
        plot.title = element_text(hjust = 0.5),
        axis.line = element_line(colour = "black"))