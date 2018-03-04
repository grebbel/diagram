setwd("~/Documents/Workspace/R-project/diagram")

#libraries
library(shape)
library(diagram)


## prepare grid
par(mar = c(1, 1, 1, 1))
openplotmat()
elpos  <- coordinates (c(1, 1, 2, 4))
fromto <- matrix(ncol = 2, byrow = TRUE, data = c(1, 2, 
                                                  2, 3, 
                                                  2, 4, 
                                                  4, 7, 
                                                  4, 8))
nr     <- nrow(fromto)
arrpos <- matrix(ncol = 2, nrow = nr)
for (i in 1:nr) arrpos[i, ] <- straightarrow (to = elpos[fromto[i, 2], ], 
                                              from = elpos[fromto[i, 1], ], 
                                              lwd = 2, arr.pos = 0.6, arr.length = 0.5)
## make text boxes
textellipse(elpos[1,], 0.1, lab = "start", box.col = "green",
            shadow.col = "darkgreen", shadow.size = 0.005, cex= 1.5)
textrect(elpos[2,], 0.15, 0.05, lab = "found term?", box.col = "blue")
textrect(elpos[4,], 0.15, 0.05, lab = "related?", box.col = "blue")
textellipse(elpos[3,], 0.1, 0.1, lab = c("other","term"), box.col = "orange",
            shadow.col = "red", shadow.size = 0.005, cex = 1.5)
textellipse(elpos[7,], 0.1, 0.1, lab = c("make","a link"), box.col = "orange",
            shadow.col = "red", shadow.size = 0.005, cex = 1.5)
textellipse(elpos[8,], 0.1, 0.1, lab = c("new","article"), box.col = "orange",
            shadow.col = "red", shadow.size = 0.005, cex = 1.5)
## arrows
dd <- c(0.0,0.025)
text(arrpos[2, 1] + 0.05, arrpos[2,2], "yes")
text(arrpos[3, 1] - 0.05, arrpos[3,2], "no")
text(arrpos[4, 1] + 0.05, arrpos[4,2] + 0.05, "yes")
text(arrpos[5, 1] - 0.05, arrpos[5,2] +0.05, "no")



##### Now try it myself

## prepare objects, 13 in total (2 invisible):
par(mar = c(1, 1, 1, 1))
openplotmat()
## nr of objects on each row:
elpos  <- coordinates (c(1, 1, 1, 1, 3, 1, 1, 3, 1), relsize = 1)
## create arrows between the objects:
fromto <- matrix(ncol = 2, byrow = TRUE, data = c(1, 2, 
                                                  2, 3, 
                                                  3, 4,
                                                  4, 6,
                                                  6, 7, 
                                                  6, 8, 
                                                  7, 8, 
                                                  8, 9, 
                                                  9, 11, 
                                                  11, 12,
                                                  12, 13,
                                                  11, 13))
nr     <- nrow(fromto)
arrpos <- matrix(ncol = 2, nrow = nr)
for (i in 1:nr) arrpos[i, ] <- straightarrow (to = elpos[fromto[i, 2], ], 
                                              from = elpos[fromto[i, 1], ], 
                                              lwd = 2, arr.pos = 0.6, arr.length = 0.3)


## make text boxes
textrect(elpos[1,], 0.15, 0.025, lab = "Create folders in EDRMS and Outlook", box.col = "green", cex = 0.5)
textrect(elpos[2,], 0.075, 0.025, lab = "Nomination of SA", box.col = "gold", cex = 0.5)
textrect(elpos[3,], 0.075, 0.025, lab = "Contract with SA", box.col = "gold", cex = 0.5)
textrect(elpos[4,], 0.075, 0.025, lab = "Final study outline", box.col = "gold", cex = 0.5)
textdiamond(elpos[6,], 0.10, 0.05, lab = "External production?", box.col = "gold", cex = 0.5)
textrect(elpos[7,], 0.07, 0.03, lab = c("Contract with", "external producer"), box.col = "purple", cex = 0.5)
textrect(elpos[8,], 0.15, 0.025, lab = "Preparation of production protocol", box.col = "gold", cex = 0.5)
textrect(elpos[9,], 0.15, 0.025, lab = "Procurement of material", box.col = "gold", cex = 0.5)
textdiamond(elpos[11,], 0.10, 0.05, lab = c("Need for","feasibility","study?"), box.col = "gold", cex = 0.5)
textrect(elpos[12,], 0.06, 0.03, lab = c("feasibility", "study"), box.col = "purple", cex = 0.5)
textrect(elpos[13,], 0.15, 0.025, lab = "Stability assessment", box.col = "gold", cex = 0.5)

                              
                                                   
                                                   
                              