#MJDonaldsonMGMT6233Module8Exercise1
#Results for K-means =3
newiris <- iris
newiris$Species <- NULL

                     

kc3 <- kmeans(newiris, 3)
table(iris$Species, kc3$cluster)

df <- data.frame(Sepal.Width=iris$Sepal.Width, Sepal.Length=iris$Sepal.Length, Cluster=factor(kc3$cluster) )
ggplot(df, aes(x=Sepal.Width, y=Sepal.Length, color=Cluster)) + geom_point() + labs(title="K-Means Clustering Result with K=3")



#Results for K-means =4

irisSubset <- subset(data.frame( iris[1:4] ))

kc4 <- kmeans(irisSubset, 4)
table(iris$Species, kc4$cluster)


df <- data.frame(Sepal.Width=iris$Sepal.Width, Sepal.Length=iris$Sepal.Length, Cluster=factor(kc4$cluster) )
ggplot(df, aes(x=Sepal.Width, y=Sepal.Length, color=Cluster)) + geom_point() + labs(title="K-Means Clustering Result with K=4")
