library( rJava )
library( xlsx )


df <- read.csv( 'C:\\Workspace\\WorkspaceR\\대중교통 자료\\노선별 배차간격.csv', header = T )
library( dplyr )
library( ggplot2 )

df
df <- df %>% select( 시.도, 월, 화, 수, 목, 금, 토, 일 )

str( df )

df <- df %>% group_by( 시.도 ) %>% 
  summarise( 월_평균 = mean( 월 ),
            화_평균 = mean( 화 ),
            수_평균 = mean( 수 ),
            목_평균 = mean( 목 ),
            금_평균 = mean( 금 )) %>% 
  mutate( average = ( 월_평균 + 화_평균 + 수_평균 + 목_평균 + 금_평균 ) / 5 )
df <- df %>% select( 시.도, average )
df

ggplot( df, aes( x = 시.도, y = average ) ) +
  geom_bar( stat = "identity",
            width = 0.7,
            fill = "steelblue" ) +
  ggtitle( "지역별 배차 간격 평균" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "steelblue" ) ) +
  labs( x = "시", y = "배차 간격 평균" )


