/my-path/speedtest > /my-path/temp_speedtest.txt &&
date +%x | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
date +%T | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
date +%Z | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Server" | cut -d' ' -f7- | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "ISP" | cut -d' ' -f7- | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Latency" | awk '{print $2}' | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Download" | awk '{print $3}' | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Download" | awk '{print $7}' | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Upload" | awk '{print $3}' | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Upload" | awk '{print $7}' | xargs echo -n >> /my-path/daily_speedtest.txt &&
echo -n "," >> /my-path/daily_speedtest.txt &&
cat /my-path/temp_speedtest.txt | grep "Packet Loss" | cut -d' ' -f7- >> /my-path/daily_speedtest.txt
