# 조민주 # 200521 / 200522



install.packages( "tidyverse" )

library( dplyr )
library( ggplot2 )

# 문제 1)
ggplot( data = mtcars, aes( x = gear ) ) +
  geom_bar() +
  labs( x = "기어의 수", y = "빈도수" )


# 문제 2)
ggplot( data = mtcars, aes( x = cyl ) ) +
  geom_bar( fill = "green" ) 
  

# 문제 3)
ggplot( mtcars, aes( mpg ) ) +
  geom_histogram( binwidth = 5.0 )


# 문제 4)
ggplot( trees, aes( x = Girth ) ) +
  geom_histogram( binwidth = 3.0, fill = "steelblue" ) +
  ggtitle( "나무 둘레" ) +
  labs( x = "나무 둘레")


# 문제 5)
ggplot( data = mtcars, aes( x = mpg,
                            y = wt,
                            color = gear ) ) +
  geom_point()


# 문제 6)
ggplot( mtcars, aes( y = mpg, fill = cyl ) ) +
  geom_boxplot()


# 문제 7)
year <- 2015:2026
pop <- c( 51014, 51245, 51446, 51635, 51811, 51973, 
          52123, 52261, 52388, 52504, 52609, 52704 )
df <- data.frame( year, pop )

ggplot( df, aes( x = year, y = pop ) ) +
  geom_line()
