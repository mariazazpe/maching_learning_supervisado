#-----------------------------------------------------
# MUCD - Fundamentos de cálculo
# Optimizar función de dos variables
#-----------------------------------------------------

rm(list=ls())

# Representación de la función en tres dimensiones 

f <- function(x1,y1) (x1^2+y1-11)^2+(x1+y1^2-7)^2
x<- seq(-5,5,0.2)
y<- seq(-5,5,0.2)
z<- outer(x,y,f)

persp(x,y,z, phi = -20, col="yellow", shade=0.60, ticktype = "detailed") # ok

# Optimizamos la función: los argumentos se introducen como un vector

f1 <- function(x) (x[1]^2+x[2]-11)^2+(x[1]+x[2]^2-7)^2

optim(c(-3,3),f1)
optim(c(-3,3),f1)$par

optim(c(-3,-3),f1)

optim(c(3,3),f1)

optim(c(3,-3),f1) # min

