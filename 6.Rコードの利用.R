# 1 使用するライブラリ
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)

# 2 データの確認
head(iris)

# 3 データの可視化
iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_classic(base_family = "HiraKakuPro-W3") +
  theme(text=element_text(size=30)) +
  labs(title="プロット")
