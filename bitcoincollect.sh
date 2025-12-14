
#!/bin/bash

json=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd")

price=$(echo "$json" | awk -F'"usd":' '{print $2}'| tr -d '}')

timestamp=$(date "+%Y-%m-%d %H:%M:%S")

if [ -z "$price" ];then
        echo "$timestamp - Error: Failed to retrieve price."

else

echo "$timestamp - $price"

echo "$timestamp,$price" >> bitcoin_prices.csv

gnuplot /home/miai1e25/plot_bitcoin.gp

fi
