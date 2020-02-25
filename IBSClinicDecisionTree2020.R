library(rpart)
library(rpart.plot)
library(caret)
set.seed(4501)
g<-runif(nrow(MockData))
datashuffle<-MockData[order(g),]
str(datashuffle)
partitiondata<-sample(2,nrow(datashuffle),replace=TRUE, prob=c(0.8,0.2))#partitioning data 50%
train1<-datashuffle[partitiondata==1,]#making training set with 80% data
validate1<-datashuffle[partitiondata==2,]#making validation set with 20% data
Model3<-rpart(Subject~BAABBB+BAABBBa+BACCCCa+BBBBBB+BBBBBBo+BBBBBBu+BBBBPPc+BBBBR+BBBBRs+BBBBRAi
            +BBBBRAo+BBBBRAp+BBBBBs+BFBLSS+BFBLSSl+BFCCLs+BFCCLB+BFCCLBo+BFCCLBp+BFCCLCc+BFCCLCh
            +BFCCLCo+BFCCLCe+BFCCLL+BFCCLR+BFCCLRf+BFCCLRt+BFCCR+BFCCRs+BFCCRFp+BFCCRGf+BFCCRR
            +BFCCRRs+BFCCRRb+BFCCRRc+BFCCVA+BFCCVD+BFCCVM+BFCCVP+BFCCVVd+BFCCM+BFEEEC+BFEEEEb
            +BPDDDB+BPGEE+BVVVVAm+Age+HFCS,data=train1,method="class")
Model3

