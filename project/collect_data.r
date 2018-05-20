## trying out with udpipe for R

library(udpipe)
udmodel <- udpipe_download_model(language = "russian")
udmodel <- udpipe_load_model(file = udmodel$file_model)
txt = c("Это мой тестовый текст. Посмотрм, как ты справишься с ним", "Как тебе такое, Элон Маск?")
x <- udpipe_annotate(udmodel, x = txt)
x <- as.data.frame(x)
str(x)

setwd('~/Documents/R_course/project/')
write.table(x, "trial.csv", sep = '\t')


## getting the data

read_parse_write <- function(rpath, wpath, udmodel) {
  # loading the data
  txt <- readLines(rpath)
  txt <- paste0(txt, collapse = " ")
  
  # parsing
  x <-udpipe_annotate(udmodel, x = txt)
  x <- as.data.frame(x)
  
  # writing the data
  write.table(x, wpath, sep = '\t')
}

read_parse_write("txt/onegin.txt", "data/poetry/pushkin_ong.csv", udmodel)
