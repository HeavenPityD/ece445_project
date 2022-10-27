For test generation,

`> make TestGenerator`

`> ./TestGenerator -s [sample size] -c (generate csv tests) -b (generate binary tests)`

for example,

` > ./TestGenerator -s 1000000 -b -c`

` > ./TestGenerator -s 1000000 -b`

csv file generation is significantly slower than binary's.

For running lob,

`> make`

`> ./lob -c (csv input) -b (binary input) -f [input path] -o [output path]`

for example,

` > ./lob -c -f sample1.in -o sample1.out`

` > ./lob -b -f sample2.bin -o sample2.out`

When tested locally, the lob performance is about 20 seconds for processing 10 million messages in binary. Csv is slower due to large file size and slow read/write