setwd("~/Downloads/")
df<-cbind(rnorm(100),rnorm(100))
plot(df)

maxy<-df[df[,1]==max(df[,1]),]
points(maxy[1],maxy[2],col="red",pch=19)
distmax<-sum(maxy^2)

start<-maxy
abline(h=0)
abline(v=0)
for (i in sample(1:dim(df)[1])[1:10]) {
#  for (i in 1:100) {
    dist<-sum(df[i,]^2)
  if (dist < distmax) {
    print(dist)
    points(df[i,1],df[i,2],col="green",pch=19)
    segments(start[1],start[2],df[i,1],df[i,2])
    start<-df[i,]
    distmax=dist
    }
}

# x<-c(1:10)
# y1<-jitter(exp(x),factor=50)
# y2<-jitter(exp(x),factor=50)
# y3<-jitter(exp(x),factor=50)
# y4<-jitter(exp(x),factor=50)
# y5<-jitter(exp(x),factor=50)
# cbind(y1,y2,y3,y4,y5)
