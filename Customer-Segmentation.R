Transactions_per_Country <- OnlineRetailData %>%
  group_by(Country) %>%
  summarise(n()) %>%
  arrange(desc(`n()`))

names(Transactions_per_Country) <- c("Country", "Number_of_Transactions")

# About 88% of the dataset is comprised of UK transactions - 
# Let's prioritize this cuountry and segment them by Recency

ggplot(Transactions_per_Country, aes(reorder(Country,Number_of_Transactions), Number_of_Transactions)) +
  geom_bar(stat = 'identity') +
  scale_y_continuous(labels = comma) +
  xlab('Countries') +
  ylab('Number of Transactions') + 
  coord_flip() 
  



  
 
