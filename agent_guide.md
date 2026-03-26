# COLIEE 2026 Paper Rules

以下規則依 2026-03-26 查核的 COLIEE 2026 官方 submission page 整理：
<https://coliee.org/COLIEE2026/submission>

## 先看結論
- 正式投稿版只能用英文稿：`paper/en/main_en.tex`
- 投稿格式必須是 ACM `sigconf`
- 論文上限 10 頁，且「包含 references」
- 提交檔案必須是 PDF
- 內容至少要交代 methods、experimental results、limitations、priorities for further research
- 這是 COLIEE local proceedings，不是 ICAIL 2026 main conference proceedings
- 官方頁面表示 copyright 文字可刪除，或自行主張論文著作權
- 論文被接受後需要在 COLIEE workshop of ICAIL 2026 發表，可實體或線上

## 撰稿硬規則
- 不得編造任何實驗、表格、指標、比較結果
- 不得把尚未執行的想法寫成既有方法
- 每個數字都要能追溯到腳本、log、metrics 或整理表
- limitations 必須誠實寫，不可省略
- future work 只寫合理且與目前系統直接相關的後續方向

## 中英文稿分工
- `paper/en/` 是正式投稿模板，維持 ACM `sigconf` 版面
- `paper/zh/` 是內部整理與對照稿，不作為正式投稿 PDF
- 中文稿整理完後，再轉寫成英文稿
- 中譯英時不得新增 repo 內無法支持的主張

## 寫作順序
1. 先確認任務、資料、run 與最終實驗版本
2. 先寫 Method 與 Experimental Setup
3. 再寫 Results and Analysis
4. 最後寫 Introduction、Abstract、Conclusion
5. 收尾時檢查英文稿總頁數是否仍在 10 頁內

## 編譯規則
- 英文 PDF：執行 `paper/build_en.sh`
- 中文 PDF：執行 `paper/build_zh.sh`
- 所有編譯輸出都放在 `paper/build/`
- VS Code 不啟用存檔自動編譯
- 只使用手動腳本編譯
