# unffuf
remove duplicate output ffuf tools depend on size
```
wget https://raw.githubusercontent.com/zerone0x1/ffuf/refs/heads/main/unffuf.sh
```
copy script to bin directory
```
cp unffuf.sh /bin/
```
how to use script in ffuf 
```
ffuf  -u https://example.com/FUZZ   -w /home/learn/Desktop/ALL/wordlist/common.txt    -fs 0 -fc 403,400,404 -ic -c -v | unffuf.sh
```
use for mult subdomains
```
for i in $(cat live.txt  ); do ffuf -u "${i}/FUZZ"  -w /home/learn/Desktop/ALL/wordlist/dbs\ backup_files_only.txt    -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0" -H "X-Forwarded-For: 127.0.0.1" -t 100 -r  -fs 0 -c -v -ic -fc 404,400,403 | unffuf.sh; done
```
