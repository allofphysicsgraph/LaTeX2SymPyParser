make clean
working_dir='/mnt/x/latex-example-expressions'
find $working_dir/examples_of_valid_latex/|grep clean|shuf|sed -n 1p|xargs -i cp "{}" test.tex
./scanner.out .
python read_offsets.py
sed -i "s/I don't understand this//g" test.tex
sed -i "s/I expected something else here//g" test.tex
sed -ri "s/~~*\^//g" test.tex
cat test.tex
