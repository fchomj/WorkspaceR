setwd( "C:\\Workspace\\WorkspaceR" )
df <-  read.csv( file = "batter_Stats_2017.csv",
          header = T )
df
class( df )
dim( df )
str( df )

library( dplyr )
library( ggplot2 )



target <- df [ , c( "경기", "타석", "타수", "안타", "홈런", "득점", "타점", "볼넷", "삼진",
                    "도루", "타율", "출루율", "장타율", "OPS", "wOBA", "WAR", "연봉.2017.", "연봉.2018." ) ]
target 

str( target)
pairs( target )

cor( target )


# 타점과 WAR의 상관 관계 

ggplot( data = df, aes( x = 타점,
                          y = WAR ) ) +
  geom_point( color = "red" ) +
  ggtitle( "타점과 WAR의 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )




# 타점이 높을수록 WAR이 높다. 상관계수 => 0.8306197






# 홈런과 WAR의 상관 관계

ggplot( data = df, aes( x = 홈런, y = WAR ) ) +
  geom_point( color = "blue" ) +
  ggtitle( "홈런과 WAR의 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )


# 홈런을 많이 쳤을수록 WAR이 높다. 상관계수 => 0.7933244







# 안타와 WAR의 상관 관계

ggplot( data = df, aes( x = 안타, y = WAR ) ) +
  geom_point( color = "green" ) +
  ggtitle( "안타와 WAR의 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )

# 안타를 많이 쳤을수록 WAR이 높다. 상관계수 => 0.7844064





# 득점과 WAR의 상관 관계 



ggplot( data = df, aes( x = 득점, y = WAR ) ) +
  geom_point( color = "purple" ) +
  ggtitle( "득점과 WAR의 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )


# 득점이 높을수록 WAR이 높다. 상관계수 => 0.7947867





# 볼넷과 WAR의 상관 관계 

ggplot( data = df, aes( x = 볼넷,
                        y = WAR ) ) +
  geom_point( color = "grey" ) +
  ggtitle( "볼넷과 WAR의 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )




# 볼넷이 높을수록 WAR이 높다. 상관계수 => 0.7862111






# 연봉과 WAR의 관계

dfm <- df %>% select( 선수명, WAR, 연봉.2018. )
dfm


w.mon <- dfm %>% arrange( desc( WAR ) ) %>% head( 20 )
w.mon

ggplot( data = w.mon, )
ggplot( w.mon, aes( x = 선수명, y = WAR ) ) +
  geom_bar( stat = "identity",
            width = 0.7,
            fill = "blue" ) +
  ggtitle( "WAR 상위 선수 20명" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) ) +
  labs( x = "선수", y = "WAR" ) +
  coord_flip()



mon.w <- dfm %>% arrange( desc( 연봉.2018. ) ) %>% head( 20 )
mon.w

ggplot( data = mon.w, )
ggplot( w.mon, aes( x = 선수명, y = WAR ) ) +
  geom_bar( stat = "identity",
            width = 0.7,
            fill = "red" ) +
  ggtitle( "연봉 상위 선수 20명" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) ) +
  labs( x = "선수", y = "WAR" ) +
  coord_flip()



ggplot( data = w.mon, aes( x = WAR,
                          y = 연봉.2018.,
                          color = 선수명 ) ) +
  geom_point( size = 3 ) +
  ggtitle( "WAR 상위 20명 선수와 연봉 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )



ggplot( data = mon.w, aes( x = WAR,
                           y = 연봉.2018.,
                           color = 선수명 ) ) +
  geom_point( size = 3 ) +
  ggtitle( "연봉 상위 20명 선수와 WAR 상관 관계" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) )



# 가장 WAR이 높은 팀

t.df <- df %>% group_by( 팀명 ) %>% 
  summarise( mean_WAR = mean( WAR ) ) %>%
  select( 팀명, mean_WAR ) %>% 
  arrange( desc( mean_WAR ) )
t.df


ggplot( data = t.df, )
ggplot( t.df, aes( x = 팀명, y = mean_WAR ) ) +
  geom_bar( stat = "identity",
            width = 0.7,
            fill = "purple" ) +
  ggtitle( "팀 별 WAR 평균" ) +
  theme( plot.title = element_text( size = 25,
                                    face = "bold",
                                    colour = "black" ) ) +
  labs( x = "팀명", y = "WAR 평균" )


