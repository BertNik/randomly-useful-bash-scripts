find ./ -maxdepth 1 -type f -exec curl -F data=@"{}" $url \;
