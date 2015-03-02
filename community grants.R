
#category vs. grants recevied in persentage
#zipcode vs. grants recevied in persentage

data = read.csv("/Users/haoranzhang/Documents/ucb2015spring/usa/edited_grants.csv")
unique(cleaned_data$Category)

data$Requested <- sapply(data$Requested, function(x) {return(as.numeric(substring(as.character(x),2)))}) 
data$Granted <- sapply(data$Granted, function(x) {return(as.numeric(substring(as.character(x),2)))}) 

Categories <- unique(data$Category)
mat <- matrix(0, nrow = 13, ncol = 3)

i = 1
for (cat in Categories) {
  req <- data$Requested[data$Category == cat]
  gra <- data$Granted[data$Category == cat]
  percen <- mean(gra / req, na.rm = T)
  mat[i, 1] = cat
  mat[i, 2] = percen
  mat[i, 3] = length(gra)
  i <- i + 1
}

mat





#percentage of fund they get in respect to the requested amount


#percentage of fund they get in respect to all the fund that were given

#number requests

#total aomunt

#comparing three quaters




