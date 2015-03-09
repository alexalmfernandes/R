d<-read.csv("hw1_data.csv")

print ("Exercicio 18")
s1<-subset(d,d[1]>31&d[4]>90)
colMeans(s1[2],na.rm=TRUE)

print ("Exercicio 19")
s1<-subset(d,d[5]==6)
colMeans(s1[4],na.rm=TRUE)

print ("Exercicio 20")
s1<-subset(d,d[5]==5)
max(s1[1],na.rm=TRUE)