# 조민주 200526


Sys.setenv( JAVA_HOME = "C:\\Java\\jdk1.8.0_251")

install.packages( "wordcloud" )
install.packages( "wordcloud2" )
install.packages( "RColorBrewer" )

library( wordcloud )
library( wordcloud2 )
library( RColorBrewer )

library( dplyr )
library( ggplot2 )


# 문제 1)
setwd( "C:\\Workspace\\WorkspaceR\\조민주 - wordcloud_problem")
text <- readLines( 'ex_10-1.txt', encoding = 'UTF-8' )
text


buildDictionary( ext_dic = 'woorimalsam' )