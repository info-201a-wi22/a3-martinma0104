#Trend over time charts
San_Diego <- c(2094283, 2123145, 2153568, 2174712, 2193894, 2211991, 2233457, 2250307, 2261891,  2263635, 2267706)
San_Francisco <- c(791152, 801922, 805550, 815677, 829027, 839841, 851116, 863836, 872795, 879166, 883305)               
Los_Angeles <- c(9735147, 9787400, 9822433, 9876727, 9938436, 9998105, 10048408, 10097037, 10120540, 10118759, 10105518)               

g_range <- range(0, San_Diego, San_Francisco, Los_Angeles)              

plot(San_Diego, type="o", col="blue", ylim=g_range, axes=FALSE, ann=FALSE) 
axis(1, at=1:11, lab=c("2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018"))
axis(2, las=1, at=10000*0:g_range[2])               
box()   
lines(San_Francisco, type="o", pch=22, lty=2, col="red")
lines(Los_Angeles, type="o", pch=23, lty=3, col="black")

title(main="Jail population in different counties from 2008 to 2018", col.main="black", font.main=4)
title(xlab="Years", col.lab=rgb(0,0.5,0))
title(ylab="Total", col.lab=rgb(0,0.5,0))  

legend("topleft", c("San_Diego","San_Francisco", "Los_Angeles"), cex=0.8, col=c("blue","red", "black"), 
       lty=1:3, lwd=2, bty="n")






