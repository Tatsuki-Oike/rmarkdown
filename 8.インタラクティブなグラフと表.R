# 1 使用するライブラリ
install.packages("dplyr")
install.packages("ggplot2")
install.packages("DT")
install.packages("plotly")
library(dplyr)
library(ggplot2)
library(DT) # インタラクティブな表
library(plotly) # インタラクティブなグラフ

# 2 データの確認
datatable(iris)
datatable(iris,
          filter='top',  # 各列の検索機能
          extensions = 'Scroller', # スクロール
          class="compact", # コンパクトに
          options = list(
            scrollY = 400, # スクロール幅
            searching = TRUE, # 検索機能
            paging = FALSE, # ページ機能off
            columnDefs = list(list(className = 'dt-left', targets = "_all")) # 左寄せd
            )
          )

# 3 データの可視化
p <-iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_classic(base_family = "HiraKakuPro-W3") +
  theme(text=element_text(size=30)) +
  labs(title="プロット")
ggplotly(p)
