today=$(date +%m_%d_%Y)
cat daily_speedtest.txt | tr -s '[]' ',' > daily_speedtest.csv &&
gsutil cp daily_speedtest.csv gs://speedtest-source/daily_speedtest_${today}.csv &&
echo "" > daily_speedtest.txt &&
echo "" > daily_speedtest.csv
