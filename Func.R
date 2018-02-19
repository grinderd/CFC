#FUnctions

require(readr)

CalcPmt = function(rate,Term,AmtFin){
  Pmt = rate*(-1)*AmtFin/(1-(1+rate)^(-Term)) 
  return(Pmt)
}

LossCalc = function(PLoss,Term){
  ultc <- read_csv("LossTimingCurve.csv")
  inp <- as.name(paste("Term",Term))
  Out <- ultc[inp]*PLoss
}
