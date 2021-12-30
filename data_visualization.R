#Data visualization

#Grammar of graphics
  #Data
  #Aesthetics: variables
  #Geometries: shapes
  #Facets: subplots: divide the plot in several subplots based on common features
  #Stats
  #Coordinates: filters based on data
  #Thems: color, design etc

#Intro to ggplot2

ggplot(kc_house_data_csv, aes(sqft_living, price))+
  geom_point(aes(color = floors),size = 2) + geom_smooth(method = "lm") + 
  coord_cartesian(xlim = c(3000,15000))+
  theme(panel.background = element_blank())+
  scale_y_continuous(labels = comma)+
  scale_color_continuous(low = "Red", high = "Black")+
  labs (x = "Size in Square Feets", y = "Price")+
  ggtitle("Accommodations Prices based on Square Feets and Number of Floors")


  


#geom_point: to make scatter plot graphs



#types of data and measurement level
  #Categorical
    #Describes features
  #Numerical
    #Discrete: integers
    #Continuous: infinite and impossible to count

#Types of variables
  #Nominal: qualitative data
  #Ordinal: groups and categories
  #Interval: numbers; no true zero
  #Ratio: numbers, true zero



#Histograms
  #tibble funciton: important to bear in mind 



tibble(kc_house_data_csv)



ggplot(kc_house_data_csv, aes(sqft_living))+
  geom_histogram(binwidth = 500, color = "black", fill = "blue", alpha = 0.5)+
  theme(panel.background = element_blank())+
  labs(y = "Number of Accommodations", x = "Square Feets")+
  ggtitle("Accommodations Size Distributed by Ranges")



ggplot(kc_house_data_csv,aes(x=as.factor(floors),y=price,fill=floors))+
  geom_boxplot(alpha = 0.4)+ geom_jitter(width = 0.2, aes(color = as.factor(waterfront)))+
  labs(x= "Number of Floors", y="Price",
       title = "Price According Number of Floors")+
  theme (panel.background = element_blank(),
         panel.grid.major = element_blank(),
         panel.grid.minor = element_blank())


ggplot(kc_house_data_csv,aes(x=as.factor(floors),y=price,fill=floors))+
  geom_boxplot(alpha = 0.4, outlier.colour = "gray", outlier.shape = 4)+ 
  labs(x= "Number of Floors", y="Price",
       title = "Price According Number of Floors")+
  theme (panel.background = element_blank(),
         panel.grid.major = element_blank(),
         panel.grid.minor = element_blank())+
  scale_y_continuous(labels = comma)


ggplot(data, aes(Income))+
  geom_histogram(color = "black", fill = "red", alpha = 0.25)+
  labs(y = "Number of Customers", x = "Sales Ranges")+
  theme(panel.background = element_blank())+
  scale_x_continuous(limits = c(-100,100))+
  ggtitle("Number of Customers Distributed by Sales Ranges")
  

#sapply function: aplica una función a un vector o lista y devuelve un vector, una matriz o un array.


sapply(kc_house_data_csv, mean)


#cor function: to get the correlation coefficient 

cor(kc_house_data_csv$sqft_living, kc_house_data_csv$price)

#Cor.test function: gives the correlation value, p.value, t test among others

cor.test(kc_house_data_csv$sqft_living, kc_house_data_csv$price)

