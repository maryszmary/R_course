library(tidyverse)

lerm_fiction <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/fiction/lerm_fiction.csv")
lerm_fiction <- lerm_fiction[, -1]
past_fiction <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/fiction/past_fiction.csv")
past_fiction <- past_fiction[, -1]


lerm_poetry <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/lerm_poetry.csv")
lerm_poetry <- lerm_poetry[, -1]
past_poetry <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/past_poetry.csv")
past_poetry <- past_poetry[, -1]
pushkin_ong <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/pushkin_ong.csv")
pushkin_ong <- pushkin_ong[, -1]

fiction <- rbind(lerm_fiction, past_fiction)
poetry <- rbind(lerm_poetry, past_poetry, pushkin_ong)