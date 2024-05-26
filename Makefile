#CC=clang
#CFLAGS=-g -fsanitize=undefined -fno-sanitize-recover=all

CC=gcc
CFLAGS=-g 
scanner:
	ragel -m -G2 scanner.rl
	ragel -m -G2 reader.rl
	$(CC)  $(CFLAGS)  -O2  scanner.c  example.c reader.c walk_dir.c main.c  xxhash.c funcs.c canonicalFromStr.c -o scanner.out -lm
	#./scanner.out . 

read_tf_idf:
	ragel read_tf_idf.rl -m -G2
	gcc  read_tf_idf.c -o read_tf_idf.out
	./read_tf_idf.out tf_idf

get_sample_data:
	wget https://www.cs.cornell.edu/projects/kddcup/download/hep-th-2003.tar.gz --no-check-certificate
	tar -xf hep-th-2003.tar.gz
