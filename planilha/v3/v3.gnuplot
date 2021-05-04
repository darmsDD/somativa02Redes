set datafile separator ','
set ydata time
set timefmt "%s" # specify our time string format
set format y "%f" # otherwise it will show only MM:SS


set ylabel "Tempo" # label for the Y axis
set xlabel 'Quantidade de casos' # label for the X axis

set title "Versão 3"
set terminal svg
set output 'v3.svg'
plot 'versao3.2.csv' using 2:5 with lines lw 3 title 'Saida padrão' ,'versao3_Com_2.csv' using 2:5 with lines lw 3 title "Saida comentada",'versao3_Null_2.csv' using 2:5 with lines lw 3 title "Saida /dev/null"