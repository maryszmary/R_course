## trying out with udpipe for R

library(udpipe)
udmodel <- udpipe_download_model(language = "russian")
udmodel <- udpipe_load_model(file = udmodel$file_model)
txt = c("Это мой тестовый текст. Посмотрм, как ты справишься с ним", "Как тебе такое, Элон Маск?")
x <- udpipe_annotate(udmodel, x = txt)
x <- as.data.frame(x)
str(x)


## loading the data


## writing the data

setwd('~/Documents/R_course/project/')
write.table(x, "trial.csv", sep = '\t')