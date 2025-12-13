set terminal png size 800,600
set output "BitcoinpricePLOT.png"

set datafile separator ","
set title"Bitcoin price over time"
set xlabel "TIME"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%H:%M\n%d-%m"

set ylabel "price in(USD)"
set grid

plot "bitcoin_prices.csv" using 1:2 with linespoints title "BTC/USD"
