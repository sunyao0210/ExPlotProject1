library(sqldf)
Data<-read.table('household_power_consumption.txt',sep=';',header=T)
SQLstatement<-"SELECT * from Data WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
SelectedData<-sqldf(SQLstatement)
GAP<-as.numeric(as.character(SelectedData$Global_active_power))
png(file='plot.png')
hist(GAP,col="red",main="global active power",xlab="global active power(kilowatt)")
dev.off()
