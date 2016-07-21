Sys.setenv(HADOOP_CMD = "/usr/bin/hadoop")
Sys.setenv(HADOOP_STREAMING = "/usr/hdp/2.4.2.0-258/hadoop-mapreduce/hadoop-streaming.jar")

library(rmr2)
library(rhdfs)

hdfs.init()

wordcount <- function(input = iris, output = NULL) {

    wc.map <- function(., row) {
        specie <- row$Species
        rmr.str(specie)
        keyval(specie, 1)
    }

    wc.reduce <- function(specie, counts) {
        rmr.str(counts)
        keyval(specie, sum(counts))
    }

    mapreduce(
        input <- input,
        output <- output,
        map <- wc.map,
        reduce <- wc.reduce
    )

}

from.dfs(wordcount(to.dfs(keyval(NULL, iris))))
