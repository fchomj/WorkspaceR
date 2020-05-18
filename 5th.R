# 
# 5일차
#
# Text File 읽기
setwd( "C:\\Workspace\\WorkspaceR" )        # setwd( "directory 경로" ) : Directory 변경 함수 
df <- read.table( file : "airquality.txt", header = T )
df

class( df )

#
# Excel 파일 읽기
#
# Excel 파일 읽기용 패키지 설치     # 매번 하지 않음 한번만 
install.packages( "xlsx" )          # Excel 파일 읽기 패키지
install.packages( "rJava" )         # Java 실행 패키지

# 기본 패키지 외에 설치된 패키지 사용( Library Load )  # 매번 해야함 
library( rJava )       # rJava / xlsx 순서 바뀌면 안 됨 
library( xlsx )

setwd( "C:\\Workspace\\WorkspaceR" )    # 파일 저장 경로 설정 
df.xlsx <- read.xlsx( file = "airquality.xlsx",
                      sheetIndex = 1,
                      encoding = "UTF-8" )

#                   sheetIndex = 엑셀 시트 
df.xlsx
class( df.xlsx )
str( df.xlsx )
head( df.xlsx )
tail( df.xlsx )


score <- c( 76, 84, 69, 50, 95, 6, 85, 71, 88, 84 )
which( score == 69 )      # 조건에 만족하는 위치의 index
which( score >= 85 )
max( score )
which.max( score )        # 최고값의 index
min( score )
which.min( score )        # 최저값의 index 

idx <-  which( score >= 60 )
score[ idx ] <- 61
score 

idx <- which( df.xlsx[ , 1:2 ] == "NA", arr.ind = TRUE )
                    # arr.ind = TRUE : 해당 조건의 행/열 값을 확인할 때 
                    # 1에서 2열 중 "NA" 값이 들어있는 값 찾을 때 
idx 









