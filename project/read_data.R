library(tidyverse)

lerm_fiction <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/fiction/lerm_fiction.csv")
lerm_fiction <- lerm_fiction[, -1]

lerm_fiction %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "lerm") %>%
  mutate(genre = "fiction") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  lerm_fiction_new


past_fiction <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/fiction/past_fiction.csv")
past_fiction <- past_fiction[, -1]

past_fiction %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "past") %>%
  mutate(genre = "fiction") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  past_fiction_new

pushkin_kap <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/fiction/pushkin_kap.csv")
pushkin_kap <- pushkin_kap[, -1]

pushkin_kap %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "pushkin") %>%
  mutate(genre = "fiction") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  pushkin_kap_new


lerm_poetry <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/lerm_poetry.csv")
lerm_poetry <- lerm_poetry[, -1]

lerm_poetry  %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "lerm") %>%
  mutate(genre = "poetry") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  lerm_poetry_new

past_poetry <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/past_poetry.csv")
past_poetry <- past_poetry[, -1]

past_poetry  %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "past") %>%
  mutate(genre = "poetry") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  past_poetry_new

pushkin_ong <- read_csv("/home/melanoya/Documents/maga/R_course/project/data/poetry/pushkin_ong.csv")
pushkin_ong <- pushkin_ong[, -1]

pushkin_ong  %>% 
  group_by(sentence) %>% 
  mutate(n_tokens = n()) %>% 
  mutate(n_words = n()) %>%
  mutate(avtor = "pushkin") %>%
  mutate(genre = "poetry") %>%
  select(n_words, avtor, genre, sentence) %>% 
  distinct() ->
  pushkin_ong_new


total <- rbind(lerm_fiction_new, past_fiction_new, pushkin_kap_new, pushkin_ong_new, past_poetry_new, lerm_poetry_new)
