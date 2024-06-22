make clean
working_dir='/mnt/x/latex-example-expressions'
find $working_dir/latex-example-expressions/examples_of_valid_latex/|grep clean|shuf|sed -n 1p|xargs -i cp "{}" test.tex
./scanner.out .
python read_offsets.py
cat test.tex
