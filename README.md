# LaTeX2SymPyParser
Translate valid Mathematical LaTeX to SymPy  

The process is  
make scanner   
make read_tf_idf   
./scanner.out path_to_latex documents  
./read_tf_idf.out tf_idf
python read_offsets.py

sample input and output 
\begin{equation}    
u=\frac{-y}{x^2+y^2} , 
v=\frac{x}{x^2+y^2} , \text{and} 
w=0
\end{equation}

u
=
\frac{-y}{x^2+y^2}
,
v
=
\frac{x}{x^2+y^2}
,
\text{and}
w
=
0



tf_idf scores are added when there is more than one document.  
output files are tf_idf and offsets.  


