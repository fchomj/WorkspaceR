# 조민주 # 200519/200520


# 문1)
income <- c( 121, 99, 41, 35, 40, 29, 35, 24, 50, 60 )
income
edu <- c( 19, 20, 16, 16, 18, 12, 14, 12, 16, 17 )
edu

tbl <- data.frame( income, edu )
tbl

plot( edu~income, data = tbl )
res <- lm( edu~income, data = tbl )
abline( res )
cor( income, edu )

# 수입이 많아질수록 교육기간이 길다.



# 문2)
score <- c( 77.5, 60, 50, 95, 55, 85, 72.5, 80, 92.5, 87.5 )
score

time <- c( 14, 10, 20, 7, 25, 9, 15, 13, 4, 21 )
time

tbl1 <- data.frame( score, time )
tbl1

plot( time~score, data = tbl1 )
res1 <- lm( time~score, data = tbl1 )
abline( res1 )
cor( score, time )

# 성적이 높을수록 TV 시청 시간이 적다



# 문3)
head( mtcars )

cor( mtcars )
cor( mtcars )[ 1, ]

# wt와 상관계수가 가장 높다



# 문4)
year <- 2015:2026
pop <- c( 51014, 51245, 51446, 51635, 51811, 51973, 52123, 52261, 52388, 52504, 52609, 52704 )
plot( year, pop, type = "l", main = "연도별 총인구수" )



# 문5)
setwd( "C:\\Workspace\\WorkspaceR" ) 
df <- read.csv( file = "도로교통공단_시도_시군구별_월별_교통사고(2018).csv",
                header = T )
df

class( df )
dim( df )
str( df )
