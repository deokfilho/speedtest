/Users/deok/Documents/Coding/speedtest/speedtest > /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt &&
date +%x | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
date +%T | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
date +%Z | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Server" | cut -d' ' -f7- | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "ISP" | cut -d' ' -f7- | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Latency" | awk '{print $2}' | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Download" | awk '{print $3}' | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Download" | awk '{print $7}' | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Upload" | awk '{print $3}' | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Upload" | awk '{print $7}' | xargs echo -n >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
echo -n "," >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt &&
cat /Users/deok/Documents/Coding/speedtest/temp_speedtest.txt | grep "Packet Loss" | cut -d' ' -f7- >> /Users/deok/Documents/Coding/speedtest/daily_speedtest.txt
