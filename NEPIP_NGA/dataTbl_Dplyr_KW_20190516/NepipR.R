install.packages(c("dplyr","data.table","DataExplorer","stringr"),dependencies = TRUE)

library(dplyr)
library(data.table)
library(DataExplorer)
library(stringr)

df<-read.csv("C:\\Users\\kimoykot\\Documents\\nepip.csv",header=TRUE)

###Review data types and missing values
introduce(df)

plot_intro(df)

plot_missing(df)

df<-df[,-c(21,24)]

df1<-distinct(df)

str(df)

###Count the types of artwork by place and nationality
df1<-dplyr::count(df,nepip_place,nepip_nationality,nepip_type)

df2<-dcast(df1,nepip_place~nepip_type,value.var=c("n"),FUN=sum)

names(which(sapply(df2,anyNA)))

df2[is.na(df2)]<-0

summary(df2)

df2<-df2[order(-df2$Drawing),]

df3<-setDT(df)[,list(Types=length(nepip_type)),by=c('nepip_name')]

##Alternative solution using base R
df3<-aggregate(df[,c('nepip_type')],by=list(Name=df$nepip_name),FUN=length)

#Calculate the Euclidean distance between two vectors
x<-1:3
y<-4:6

sqrt(sum((x-y)^2))

(x-y)^2 %>% sum() %>% sqrt()

df3<- filter(df,nepip_name %in% c("Hoefnagel, Joris","Anonymous"))

df3<- filter(df,nepip_name=="Hoefnagel, Joris" | nepip_name=="Anonymous")

setkey(df,nepip_name)
df3<-df[c("Anonymous","Hoefnagel, Joris")]


df4<- df %>%
      filter(str_detect(nepip_title,'Christ | christ')) %>%
      group_by(nepip_place)  %>%
      summarise_at(c("nepip_type"),length) %>%
      arrange(desc(nepip_type))


df5<-df %>%
     group_by(nepip_name) %>%
     mutate(ID=rnorm(1))

length(unique(df5$nepip_name))
length(unique(df5$ID))
