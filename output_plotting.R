library(ggplot2)
library(gridExtra)

training = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/training.csv")
trainPlot = ggplot(training,aes(x=F1,y=F2,color=as.factor(Category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")

bcl2d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/bcl2d.csv")
bcl3d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/bcl3d.csv")
bcl4d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/bcl4d.csv")
p1 = ggplot(bcl2d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p2 = ggplot(bcl3d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p3 = ggplot(bcl4d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
grid.arrange(p1,p2,p3,ncol=3)

ome2d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/OME2d.csv")
ome3d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/OME3d.csv")
ome4d = read.csv("~/Dropbox/Dissertation/dissertation-data-analysis/simulation-results/OME4d.csv")
p1 = ggplot(ome2d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p2 = ggplot(ome3d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p3 = ggplot(ome4d,aes(x=F1,y=F2,color=as.factor(category)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
grid.arrange(p1,p2,p3,ncol=3)


bcl2d = read.csv("bcl2d.csv",header=F)
p1 = ggplot(bcl2d,aes(x=V1,y=V2,color=as.factor(V3)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p1

bcl3d = read.csv("bcl3d.csv",header=F)
p2 = ggplot(bcl3d,aes(x=V2,y=V3,color=as.factor(V4)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p2

bcl4d = read.csv("bcl4d.csv",header=F)
p3 = ggplot(bcl4d,aes(x=V3,y=V4,color=as.factor(V5)))+stat_ellipse(size=1)+theme_bw()+theme(legend.position="none")
p3