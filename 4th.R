#
# 4일차 R Script 실습
#


#
# 변수명 / 표준 입력/ 표준 출력
#
# 변수명 부여 방식   이름 부여하기 
numberValue <-  1                    # camel 표기법 대문자 사용
str_value <- "R Language"            # snake 표기법 단어와 단어사이 _ 사용
booleanvalue <-  TRUE                # 일반 표기법 다 소문자로/단어 구분 명확 x
#                                                  의미 전달 완벽 x
# 변수명은 다 소문자로 시작 

# 표준 출력 장치에 출력
# 
# print()의 단점 : 자동 줄바꿈( \n, 자동 개행 ), 하나의 변수만 출력
numberValue; print( numberValue )
str_value; print( str_value )
booleanvalue; print( booleanvalue )


# cat() : 여러 내용을 출력할 수 있고, 자동 줄바꿈이
#         일어나지 않는 표준 출력 장치에 출력하는 함수
#
# 제어 문자 : 화면에 출력되지 않고 기능을 수행하는 문자 / 동작만 수행 
#   \n : 개행 문자( 줄바꿈 )
#   \t : tab 문자 
#
cat( 'Numeric number : ', numberValue, '\n' )
cat( 'String : ', str_value, '\n' )
cat( 'Boolean value : ', booleanvalue, '\n' )
print( '------------------------------------------' )
cat( 'Numeric number : ', numberValue, '\t',
     'String : ', str_value, '\t', 
     'Boolean value : ', booleanvalue, '\n' )
cat( 'test' )

#
# 표준 입력 장치로 부터 입력
#
# scan() : 표준 입력 장치로 부터 입력 받는 함수
# readline() : 표준 입력 장치로 부터 입력 받는 함수
# edit() : 표준 입력 장치로 부터 표형식으로 입력 받는 함수 
#
# signature : 함수의 원형 
#
# 출력( output, print ) : memory 내용을 output device( 출력 장치 )에 전송 
# 입력( input ) : input device( 입력 장치 )에서 memory로 전송하여 기억

# 표준 입력 : stdin
# 표준 출력 : stdout
# 표준 error 표시 : stderr

# 표준 출력 장치 : 모니터 # 표준 출력 장치 : 키보드 
#
inputData <- scan()      # scan은 빈줄이 입력될 때까지 숫자를 입력 받는다. 
class( inputData )
inputData

inputData <- scan( what=character() )   # 문자 입력시 사용
class( inputData )
inputData

inputData <- readline( ' Input data -> ' ) # readline은 한번만 입력 
class( inputData )
inputData


number1 <- readline( 'Input number1 : ' )
number2 <- readline( 'Input number2 : ' )
result <- number1 + number2
result

number1 <- as.numeric( readline( 'Input number1 : ' ) )
number2 <- as.numeric( readline( 'Input number2 : ' ) )
result <- number1 + number2
result

number1 <- readline( 'Input number1 : ' )
number2 <- readline( 'Input number2 : ' )
result <- as.numeric( number1 ) + as.numeric( number2 )
result

#
# 실습 문제 : 두 수를 입력 받아서 다음과 같이 출력
#      입력
#           Input number1 : [ 10 ]
#           Input number2 : [ 5 ]
#      출력 결과
#           10 + 5 = 15
#           10 - 5 = 5
#           10 * 5 = 50
#           10 / 5 = 2
#           10 %% 5 = 0

number1 <- readline( 'Input number1 : ' )
number2 <- readline( 'Input number2 : ' )
result <- as.numeric( number1 ) + as.numeric( number2 )
result
result <- as.numeric( number1 ) - as.numeric( number2 )
result
result <- as.numeric( number1 ) * as.numeric( number2 )
result
result <- as.numeric( number1 ) / as.numeric( number2 )
result
result <- as.numeric( number1 ) %% as.numeric( number2 )
result
