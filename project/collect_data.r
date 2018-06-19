## trying out with udpipe for R

library(udpipe)
udmodel <- udpipe_download_model(language = "russian")
udmodel <- udpipe_load_model(file = udmodel$file_model)
txt = c("Это мой тестовый текст. Посмотрм, как ты справишься с ним", "Как тебе такое, Элон Маск?")
x <- udpipe_annotate(udmodel, x = txt)
x <- as.data.frame(x)
str(x)

setwd('~/Documents/R_course/project/')
# write.table(x, "trial.csv", sep = '\t')
write.csv(x, 'tr.csv')

tr <- read.csv('tr.csv')

## getting the data

read_parse_write <- function(rpath, wpath, udmodel) {
  # loading the data
  txt <- readLines(rpath)
  txt <- paste0(txt, collapse = " ")

  # parsing
  x <-udpipe_annotate(udmodel, x = txt)
  x <- as.data.frame(x)

  # writing the data
  write.csv(x, wpath)
}

read_parse_write("txt/Kapitanskaya_dochka.txt", "data/fiction/pushkin_kap.csv", udmodel)

# pushkin_poetry <- readLines("txt/onegin.txt")
# pushkin_poetry <- paste0(pushkin_poetry, collapse = " ")
# pushkin_fiction <- readLines("txt/Kapitanskaya_dochka.txt") 
# lerm_fiction <- readLines("txt/lerm_fiction.txt") 
# lerm_poetry <- readLines("txt/lerm_poetry.txt") 
# past_fiction <- readLines("txt/past_fiction.txt") 
# past_poetry <- readLines("txt/past_poetry.txt") 