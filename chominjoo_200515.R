# 조민주 200514 / 200515

# 문제1)

# 1
score <- matrix( c( 10, 40,
                    60, 20,
                    21, 60,
                    70, 30 ),
                 nrow = 4, ncol = 2 )
score

# 2
colnames( score ) <- c( 'male', 'female' )
score

# 3
score[ 2, ]

# 4
score[ , 'female' ]

# 5
score[ 3, 2 ]





# 문제2)

# 1 
st <- data.frame( state.x77 )

# 2
st

# 3
colnames( st )

# 4
rownames( st )

# 5
dim( st )

# 6
str( st )

# 7

# 8

# 9
st[ 'Florida', ]

# 10
st[ , 2 ]

# 11
st[ 'Texas', 'Area' ]

# 12
st[ 'Ohio', c( 'Population', 'Income' ) ]

# 13
subset( st, Population >= 5000 )

# 14
subset( st, Income >= 4500 )[ , c( 1, 2, 8 ) ]

# 15
subset( st, Income >= 4500 )

# 16
subset( st, Area >= 10000 & Frost >= 120 )

# 17
subset( st, Population < 2000 & Murder < 12 )

# 18
subset( st, Illiteracy >= 2.0 )

# 19

# 20

# 21







# 문제3)

# 1
class( mtcars )

# 2
dim( mtcars )

#3
mtcars[]

# 4
max( mtcars[ 'mpg' ] )

# 5

# 6

# 7

# 8

# 9









