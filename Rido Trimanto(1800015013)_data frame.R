title: "Tugas Data Frame R"
author: "Rido Trimanto"
date: "4/10/2021"
output:
  html_document: default
---
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}
# Mengakses data .csv
df <- read.csv("https://raw.githubusercontent.com/jokoeliyanto/Kelas-Dasar-Pejuang-Data-2.0/main/Super-Store-Dataset.csv")
# Menampilkan data
df

