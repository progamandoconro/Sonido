library(tuneR)        #import the tuneR library
setWavPlayer("vlc")
f2=240 
f1=440
#frequency of A4 note
sr=4000 
bits=16
secs=5               #length of the note set to 2
amp=1
t=seq(0, secs, 1/sr)
y= amp*sin(2*pi*f1*t)  #make a sinewave with above attributes
y2= amp*sin(2*pi*f2*t)
s=floor(2^(bits-2)*y) #floor it to make it an integer value
s2=floor(2^(bits-2)*y2)
u=Wave(c(s,s2), samp.rate=sr, bit=bits)  #make a wave structure 
u=Wave(s+s2, samp.rate=sr, bit=bits)  #make a wave structure 

play(u)       
plot (u)


#######

d <- read.csv("~/Dropbox/sistemas/dataSaul2018.csv")
normalize <- function(x) return((x - min(x)) / (max(x) - min(x)))

d <- as.data.frame(lapply(d, normalize))

library(tuneR)        #import the tuneR library
setWavPlayer("vlc")

f1=240
#frequency of A4 note
sr=4000 
bits=16
secs=5               #length of the note set to 2
amp=1
t=seq(0, secs, 1/sr)
y= amp*sin(2*pi*f1*t)  #make a sinewave with above attributes

s=floor(2^(bits-2)*y)*d$P.fendleri #floor it to make it an integer value


u=Wave(s, samp.rate=sr, bit=bits)  #make a wave structure 

play(u) 
plot(u)



###############
library(tuneR)        #import the tuneR library
setWavPlayer("vlc")
f2=240 
f1=440
#frequency of A4 note
sr=4000 
bits=16
secs=5               #length of the note set to 2
amp=1
t=seq(0, secs, 1/sr)
y= amp*sin(2*pi*f1*t)  #make a sinewave with above attributes
y2= amp*sin(2*pi*f2*t)
s=floor(2^(bits-2)*y) #floor it to make it an integer value
s2=floor(2^(bits-2)*y2)
u=Wave(c(s,s2), samp.rate=sr, bit=bits)  #make a wave structure 
u=Wave(s+s2, samp.rate=sr, bit=bits)  #make a wave structure 
u=Wave(s+s2, samp.rate=sr, bit=bits)  #make a wave structure 
u=Wave(840*d$year[400],samp.rate=10, bit=bits) #make a wave structure 

play(u)       
plot (u)
play(sine(840*d$year[400]))
play(sine(840*d$year[40])*sine(840*d$year[400]))
play(sine(840*d$year[40])*sine(840*d$year[400])*sine(840*d$year[200]))
play(cos(840*d$year[40])*sine(840*d$year[400])*sine(840*d$year[200])*sine(840*d$year[70]))


plot(sine(840*d$year[400])*sine(840*d$year[400]))

#######################################3

library(tuneR)        #import the tuneR library
setWavPlayer("vlc")

d <- read.csv("~/Dropbox/sistemas/dataSaul2018.csv")
normalize <- function(x) return((x - min(x)) / (max(x) - min(x)))
d <- as.data.frame(lapply(d, normalize))

play(sine(840*d$year[400]))
play(sine(840*d$year[40])*sine(840*d$year[400]))
play(sine(840*d$year[40])*sine(840*d$year[400])*sine(840*d$year[200]))
play(cos(840*d$year[40])*sine(840*d$year[400])*sine(840*d$year[200])*sine(840*d$year[70]))



u=readWave( sine (840*d$year[400]))


str(u)




#########################################################################
library(tuneR)        #import the tuneR library
setWavPlayer("vlc")

d <- read.csv("~/Dropbox/sistemas/dataSaul2018.csv")
normalize <- function(x) return((x - min(x)) / (max(x) - min(x)))
d <- as.data.frame(lapply(d, normalize))
d=d+1

u=list( sine(840),sine(440))
play(u[[1]])
play(u[[2]])

for (i in 1:2) play(u[[i]])

u=bind( sine(840),sine(440))
play(u)

Wobj <- bind(sine(440*d$year[100]), sine(440*d$year[200]))
show(Wobj)
plot(Wobj) # it does not make sense to plot the whole stuff
plot(extractWave(Wobj, from = 1, to = 500))
## Not run: 
play(Wobj) # listen to the sound


for (i in 1:nrow(d)) (sine(440*d$year[i]))

Wobj <- bind(sine(440*d$P.fendleri[100]), sine(440*d$P.fendleri[200]))
show(Wobj)
plot(Wobj) # it does not make sense to plot the whole stuff
plot(extractWave(Wobj, from = 1, to = 500))
## Not run: 
play(Wobj) # listen to the sound


l=lapply(d$P.fendleri*440, sine)

l=lapply(l, prepComb)

s=bind(l[[1+5]],l[[13+5]],l[[25+5]],l[[37+5]],l[[49+5]],l[[61+5]],l[[73+5]],l[[85+5]],l[[97+5]],l[[109+5]],
       l[[121+5]],l[[133+5]],l[[145+5]],l[[157+5]],l[[169+5]],l[[181+5]],l[[193+5]],l[[205+5]],l[[217+5]],
       l[[229+5]],l[[241+5]],l[[253+5]],l[[265+5]],l[[277+5]],l[[289+5]],l[[301+5]],l[[313+5]],l[[325+5]],
      l[[337+5]],l[[349+5]],l[[361+5]],l[[373+5]],l[[385+5]],l[[397+5]],l[[409+5]])

play(s)

