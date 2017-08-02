# windows 下监控进程 gc
tasklist | findstr java.exe | awk 'END {print $2}' | xargs -I {} jstat -gc {} 500
