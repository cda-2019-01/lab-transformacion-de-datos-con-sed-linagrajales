# Escriba su código aquí
sed 's/[a-z]/\U&/g' data.csv > out.1
sed 's/;;/;\\N;/g' out.1 > out.2
sed 's/;N/;\\N/g' out.2 > out.3
sed '5 s/;\\N;\\N;/;\\N;\\N;\\N /' out.3 > out.4
sed '7 s/;\\N;/;\\N;\\N/' out.4 > out.5
sed 's/,/./g' out.5 > out.6
sed 's/;/,/g' out.6 > out.7
sed 's/\//-/g' out.7 > out.8
sed 's/\([0-9]\)-\([0-9]\)-\([0-9][0-9]\)/0\1-0\2-\3/g' out.8 > out.9
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\),/\1-\2-20\3,/' out.9 > out.10
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)/\3-\2-\1/g' out.10 > lab-01-linag
cat lab-01-linag
rm out*
