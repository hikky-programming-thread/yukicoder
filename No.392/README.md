# No.392 2分木をたどれ
http://yukicoder.me/problems/no/392

yukicoder contest 144
2016-07-12 00:00:00 - 2016-07-13 00:00:00  
http://yukicoder.me/contests/144/table  
コンテスト問題 A  
提出したコード http://yukicoder.me/submissions/103110  

# 僕の回答の説明

入力された点から根元のほうへ辿っていけばよい  
図のような番号が根元から順番に付けられているので  
各点の番号が
 - 奇数なら`(番号 - 1) / 2`で一個上の点の番号が求まり、左下⇔右上の関係になる  
 - 偶数なら`(番号 - 2) / 2`で一個上の点の番号が求まり、右下⇔左上の関係になる  

となることが図をよーく見て発見する （データ構造の基本的な勉強で配列で２分木を作ることを知っていれば気づきやすいかも）    
位置関係が分かるのでそれに合わせてルートのLやRを文字列としてつなげていけばよい  


Bashで書くとこんな感じ
```Bash
typeset -i m  a i
read m
for ((i=0;i<m;i++)); do
  read a
  s=''
  while (( a > 0 )); do
     if (( (a % 2) > 0 )); then
        a=$(( (a - 1) / 2 ))
        s="L$s"
     else
        a=$(( (a - 2) / 2))
        s="R$s"
     fi
  done
  echo $s
done
```

