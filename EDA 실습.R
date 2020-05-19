#
# 도로교통공단_시도_시군구별_월별_교통사고(2018) 이용한 EDA 실습
#

setwd( "C:\\Workspace\\WorkspaceR" )   
acc.xlsx <- read.xlsx( file = "도로교통공단_시도_시군구별_월별_교통사고(2018).xlsx",
                      sheetIndex = 1,
                      encoding = "UTF-8" )
acc.xlsx
class( acc.xlsx )
dim( acc.xlsx )
str( acc.xlsx )
head( acc.xlsx )
tail( acc.xlsx )

acc <-  acc.xlsx[ , 4 ]
acc

range( acc )
summary( acc )
var( acc )
sd( acc )
hist( acc, main = "사고 발생건수",
      xlab = "발생건수", ylab = "지역" )

