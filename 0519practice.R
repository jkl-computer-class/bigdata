# [자료탐색(다변량)연습문제]

# 1. R에서 제공하는 cars데이터셋을 이용하여 속도(speed)와 제동거리(dist)에 대한 산점도을 작성하고, 
#    두 변수 간의 상관관계를 설명하시오. (x축:speed, y축:dist)

head(cars)
speed <- cars$speed
dist <- cars$dist
plot(speed, dist, main='Speed-Distance Graph',
     xlab='Speed',
     ylab='Distance',
     col='red',
     pch=19)
 
# 2. R에서 제공하는 pressure 데이터셋을 이용하여 온도(temperature)와 기압(pressure)에 대한 산점도를
#    작성하고, 두 변수간의 상관 관계를 설명하시오.(x축:temperature, y축:pressure)
data(pressure)
pressure
temperature <- pressure$temperature
pressure <- pressure$pressure
plot(temperature, pressure, main='Graph', xlab='Temperature',ylab='Pressure',col='blue',pch=13)

# 3. R에서 제공하는 trees 데이터셋에 대해 다음 문제를 해결하기 위한 R코드를 작성하시오.
# 1) 나무의 지름(Girth)과 높이(Height)에 대해 산점도와 상관계수를 보이시오.
head(trees)
girth <- trees$Girth
height <- trees$Height
plot(girth, height, main='Graph', xlab='Girth', ylab='Height', col='green', pch=15)
cor(girth, height)

# 2) trees 데이터셋에 존재하는 3개 변수 간의 산점도와 상관계수를 보이시오.
pairs(trees[,],main='graph')
cor(trees[,])
 
# 4. R에서 제공하는 AirPassengers 데이터셋은 1949년~1960년 사이의 항공승객수를 월별로 나타낸 것이다. 
#    AirPassengers 데이터셋에서 1949, 1955, 1960년의 월별 승객수를 선그래프로 작성하는데, 
#    3개년도의 선의 색을 다르게 하시오.(현재는 AirPassengers 데이터셋에서 직접 데이터를 추출할
#    수 없으니 AirPassengers 데이터셋을 보고 필요한 자료를 입력하여 사용한다.)
data("AirPassengers")
AirPassengers
class(AirPassengers)

month <- 1:12
yr1949 <- c(112, 118, 132, 129, 121, 135, 148, 148, 136, 119, 104, 118)
yr1955 <- c(242, 233, 267, 269, 270, 315, 364, 347, 312, 274, 237, 278)
yr1960 <- c(417, 391, 419, 461, 472, 535, 622, 606, 508, 461 ,390 ,432)

class(yr1949)

plot(month,
     yr1949,
     ylim=c(100,700),
     main='Monthly Passengers',
     type='b',
     col='red',
     xlab='Month',
     ylab='Passanger Cnt'
)
lines(month,yr1955,type='b',col='blue',ylim=c(100,400))
lines(month,yr1960,type='b',col='green')
legend(1,700,c("1949","1955",'1960'),lwd=c(1,1),col=c("red","blue","green"),pch=3)

 
# 5. R에서 제공하는 USAccDeaths 데이터셋은 1973년~1978년 사이의 사고 사망자 숫자를 월별로 나타낸 것이다. 
#    USAccDeaths 데이터셋에서 1973, 1975, 1977년의 월별 사망자 숫자를 선그래프로 작성하는데,
#    3개년도의 선의 색을 다르게 하시오.

USAccDeaths
class(USAccDeaths)
str(USAccDeaths)

month <- 1:12
yr1973 <- c(9007, 8106,8928, 9137, 10017, 10826, 11317, 10744,9713, 9938,9161, 8927)
yr1975 <- c(8162,  7306,  8124,  7870,  9387,  9556, 10093,  9620,  8285,  8466,  8160,  8034)
yr1977 <- c(7792,  6957,  7726,  8106,  8890,  9299, 10625,  9302,  8314,  8850,  8265,  8796)
class(yr1977)

plot(month,
     yr1973,
     main='Monthly Deaths',
     xlab='Month',
     ylab='Death Cnt',
     type='l',
     col='red',
     ylim=c(7000,12000))
lines(month,yr1975,type='l',col='blue')
lines(month,yr1977,type='l',col='green')
legend(1,12000,c('1973','1975','1977'),col=c('red','blue','green'),lwd=c(1,1))
