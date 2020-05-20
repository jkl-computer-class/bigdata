# [�ڷ�Ž��(�ٺ���)��������]

# 1. R���� �����ϴ� cars�����ͼ��� �̿��Ͽ� �ӵ�(speed)�� �����Ÿ�(dist)�� ���� �������� �ۼ��ϰ�, 
#    �� ���� ���� ������踦 �����Ͻÿ�. (x��:speed, y��:dist)

head(cars)
speed <- cars$speed
dist <- cars$dist
plot(speed, dist, main='Speed-Distance Graph',
     xlab='Speed',
     ylab='Distance',
     col='red',
     pch=19)
 
# 2. R���� �����ϴ� pressure �����ͼ��� �̿��Ͽ� �µ�(temperature)�� ���(pressure)�� ���� ��������
#    �ۼ��ϰ�, �� �������� ��� ���踦 �����Ͻÿ�.(x��:temperature, y��:pressure)
data(pressure)
pressure
temperature <- pressure$temperature
pressure <- pressure$pressure
plot(temperature, pressure, main='Graph', xlab='Temperature',ylab='Pressure',col='blue',pch=13)

# 3. R���� �����ϴ� trees �����ͼ¿� ���� ���� ������ �ذ��ϱ� ���� R�ڵ带 �ۼ��Ͻÿ�.
# 1) ������ ����(Girth)�� ����(Height)�� ���� �������� �������� ���̽ÿ�.
head(trees)
girth <- trees$Girth
height <- trees$Height
plot(girth, height, main='Graph', xlab='Girth', ylab='Height', col='green', pch=15)
cor(girth, height)

# 2) trees �����ͼ¿� �����ϴ� 3�� ���� ���� �������� �������� ���̽ÿ�.
pairs(trees[,],main='graph')
cor(trees[,])
 
# 4. R���� �����ϴ� AirPassengers �����ͼ��� 1949��~1960�� ������ �װ��°����� ������ ��Ÿ�� ���̴�. 
#    AirPassengers �����ͼ¿��� 1949, 1955, 1960���� ���� �°����� ���׷����� �ۼ��ϴµ�, 
#    3���⵵�� ���� ���� �ٸ��� �Ͻÿ�.(����� AirPassengers �����ͼ¿��� ���� �����͸� ������
#    �� ������ AirPassengers �����ͼ��� ���� �ʿ��� �ڷḦ �Է��Ͽ� ����Ѵ�.)
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

 
# 5. R���� �����ϴ� USAccDeaths �����ͼ��� 1973��~1978�� ������ ��� ����� ���ڸ� ������ ��Ÿ�� ���̴�. 
#    USAccDeaths �����ͼ¿��� 1973, 1975, 1977���� ���� ����� ���ڸ� ���׷����� �ۼ��ϴµ�,
#    3���⵵�� ���� ���� �ٸ��� �Ͻÿ�.

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