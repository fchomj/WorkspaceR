# 조민주 200526


Sys.setenv( JAVA_HOME = "C:\\Java\\jdk1.8.0_251")

install.packages( "wordcloud" )
install.packages( "wordcloud2" )
install.packages( "RColorBrewer" )

library( wordcloud )
library( wordcloud2 )
library( RColorBrewer )

library( KoNLP )
useNIADic()
library( dplyr )
library( ggplot2 )


# 문제 1)
setwd( "C:\\Workspace\\WorkspaceR\\조민주 - wordcloud_problem")
text <- readLines( 'ex_10-1.txt', encoding = 'UTF-8' )
text


buildDictionary( ext_dic = 'woorimalsam' )
pal 









# 문제 3)

setwd( "C:\\Workspace\\WorkspaceR\\조민주 - wordcloud_problem")
text5 <- readLines( 'ex_10-5.txt', encoding = 'UTF-8' )
text5

buildDictionary( ext_dic = 'woorimalsam' )
pal2 <- brewer.pal( 8, 'Dark2' )

noun5 <- sapply( text5, extractNoun, USE.NAMES = F )
noun5
noun6 <- unlist( noun5 )

noun6 <- noun6[ nchar( noun6 ) > 1 ] 


wordcount5 <- table( noun6 )


sort.noun5 <- sort( wordcount5, decreasing = T )[ 1:10 ]
sort.noun5

wordcloud( names( wordcount5 ), 
           freq = wordcount5,
           main.freq = 3,
           random.order = F,
           rot.per = .1,
           colors = pal2 )

wordcloud2( wordcount5, color = 'random-light',
            backgroundColor = 'black' )
