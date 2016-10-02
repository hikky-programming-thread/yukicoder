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
