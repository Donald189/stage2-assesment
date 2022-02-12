for (( i=0; i<42; i++))
do
  randomtoss=$((RANDOM%2))
  echo "The result for the flip: $randomtoss"

  if [[ $randomtoss == 0 ]]
  then
      let "heads= heads+1"
  else
      let "tails= tails+1"
  fi
 
  if [[ $heads == 21 ]]
  then
      echo "Heads won 21 times"
  elif [[ $tails == 21 ]]
  then
      echo "Tails won 21 times"
  fi
done