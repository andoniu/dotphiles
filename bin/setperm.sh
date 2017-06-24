for root in "$@"
do
for f in $(find "$root/")
do
  if [ -f "$f" ]
  then
    chmod 644 "$f"
  elif [ -d "$f" ]
  then
    chmod 755 "$f"
  fi
done
done
