%%{
  machine ams_latex;
comment='%' (any{1,100}-'\n') '\n';

math_begin = '\\begin{math}' @{n++; };
   math_end  = '\\end{math}' @{n--; };
	 math_body = any+ - (math_begin|math_end);
   math = '\\begin{math}' @{n=1;}  (math_begin|math_end|math_body)*    math_end  :> any when{!n};

   equation_begin = '\\begin{equation}' @{n++; };
   equation_end  = '\\end{equation}' @{n--; }; 
	 equation_body = any+ - (equation_begin|equation_end);
   equation = '\\begin{equation}' @{n=1;}  (equation_begin|equation_end|equation_body)*    equation_end  :> any when{!n};

   eq_begin = '\\begin{eq}' @{n++; };
   eq_end  = '\\end{eq}' @{n--; }; 
	 eq_body = any+ - (eq_begin|eq_end);
   eq = '\\begin{eq}' @{n=1;}  (eq_begin|eq_end|eq_body)*    eq_end  :> any when{!n};

eqnarray_begin = '\\begin{eqnarray}' @{n++; };
   eqnarray_end  = '\\end{eqnarray}' @{n--; };
	 eqnarray_body = any+ - (eqnarray_begin|eqnarray_end);
   eqnarray = '\\begin{eqnarray}' @{n=1;}  (eqnarray_begin|eqnarray_end|eqnarray_body)*    eqnarray_end  :> any when{!n};

   figure_begin = '\\begin{figure}' @{n++; };
   figure_end  = '\\end{figure}' @{n--; };
	 figure_body = any+ - (figure_begin|figure_end);
   figure = '\\begin{figure}' @{n=1;}  (figure_begin|figure_end|figure_body)*    figure_end  :> any when{!n};

   array_begin = '\\begin{array}' @{n++; };
   array_end  = '\\end{array}' @{n--; };
	 array_body = any+ - (array_begin|array_end);
   array = '\\begin{array}' @{n=1;}  (array_begin|array_end|array_body)*    array_end  :> any when{!n};

   center_begin = '\\begin{center}' @{n++; };
   center_end  = '\\end{center}' @{n--; };
	 center_body = any+ - (center_begin|center_end);
   center = '\\begin{center}' @{n=1;}  (center_begin|center_end|center_body)*    center_end  :> any when{!n};

   align_begin = '\\begin{align}' @{n++; };
   align_end  = '\\end{align}' @{n--; };
	 align_body = any+ - (align_begin|align_end);
   align = '\\begin{align}' @{n=1;}  (align_begin|align_end|align_body)*    align_end  :> any when{!n};

   tabular_begin = '\\begin{tabular}' @{n++; };
   tabular_end  = '\\end{tabular}' @{n--; };
	 tabular_body = any+ - (tabular_begin|tabular_end);
   tabular = '\\begin{tabular}' @{n=1;}  (tabular_begin|tabular_end|tabular_body)*    tabular_end  :> any when{!n};

   proof_begin = '\\begin{proof}' @{n++; };
   proof_end  = '\\end{proof}' @{n--; };
	 proof_body = any+ - (proof_begin|proof_end);
   proof = '\\begin{proof}' @{n=1;}  (proof_begin|proof_end|proof_body)*    proof_end  :> any when{!n};

   itemize_begin = '\\begin{itemize}' @{n++; };
   itemize_end  = '\\end{itemize}' @{n--; };
	 itemize_body = any+ - (itemize_begin|itemize_end);
   itemize = '\\begin{itemize}' @{n=1;}  (itemize_begin|itemize_end|itemize_body)*    itemize_end  :> any when{!n};

   thebibliography_begin = '\\begin{thebibliography}' @{n++; };
   thebibliography_end  = '\\end{thebibliography}' @{n--; };
	 thebibliography_body = any+ - (thebibliography_begin|thebibliography_end);
   thebibliography = '\\begin{thebibliography}' @{n=1;}  (thebibliography_begin|thebibliography_end|thebibliography_body)*    thebibliography_end  :> any when{!n};

   abstract_begin = '\\begin{abstract}' @{n++; };
   abstract_end  = '\\end{abstract}' @{n--; };
	 abstract_body = any+ - (abstract_begin|abstract_end);
   abstract = '\\begin{abstract}' @{n=1;}  (abstract_begin|abstract_end|abstract_body)*    abstract_end  :> any when{!n};

   enumerate_begin = '\\begin{enumerate}' @{n++; };
   enumerate_end  = '\\end{enumerate}' @{n--; };
	 enumerate_body = any+ - (enumerate_begin|enumerate_end);
   enumerate = '\\begin{enumerate}' @{n=1;}  (enumerate_begin|enumerate_end|enumerate_body)*    enumerate_end  :> any when{!n};

   table_begin = '\\begin{table}' @{n++; };
   table_end  = '\\end{table}' @{n--; };
	 table_body = any+ - (table_begin|table_end);
   table = '\\begin{table}' @{n=1;}  (table_begin|table_end|table_body)*    table_end  :> any when{!n};

   lemma_begin = '\\begin{lemma}' @{n++; };
   lemma_end  = '\\end{lemma}' @{n--; };
	 lemma_body = any+ - (lemma_begin|lemma_end);
   lemma = '\\begin{lemma}' @{n=1;}  (lemma_begin|lemma_end|lemma_body)*    lemma_end  :> any when{!n};

   minipage_begin = '\\begin{minipage}' @{n++; };
   minipage_end  = '\\end{minipage}' @{n--; };
	 minipage_body = any+ - (minipage_begin|minipage_end);
   minipage = '\\begin{minipage}' @{n=1;}  (minipage_begin|minipage_end|minipage_body)*    minipage_end  :> any when{!n};

   picture_begin = '\\begin{picture}' @{n++; };
   picture_end  = '\\end{picture}' @{n--; };
	 picture_body = any+ - (picture_begin|picture_end);
   picture = '\\begin{picture}' @{n=1;}  (picture_begin|picture_end|picture_body)*    picture_end  :> any when{!n};

   theorem_begin = '\\begin{theorem}' @{n++; };
   theorem_end  = '\\end{theorem}' @{n--; };
	 theorem_body = any+ - (theorem_begin|theorem_end);
   theorem = '\\begin{theorem}' @{n=1;}  (theorem_begin|theorem_end|theorem_body)*    theorem_end  :> any when{!n};

   split_begin = '\\begin{split}' @{n++; };
   split_end  = '\\end{split}' @{n--; };
	 split_body = any+ - (split_begin|split_end);
   split = '\\begin{split}' @{n=1;}  (split_begin|split_end|split_body)*    split_end  :> any when{!n};

   pmatrix_begin = '\\begin{pmatrix}' @{n++; };
   pmatrix_end  = '\\end{pmatrix}' @{n--; };
	 pmatrix_body = any+ - (pmatrix_begin|pmatrix_end);
   pmatrix = '\\begin{pmatrix}' @{n=1;}  (pmatrix_begin|pmatrix_end|pmatrix_body)*    pmatrix_end  :> any when{!n};

   verbatim_begin = '\\begin{verbatim}' @{n++; };
   verbatim_end  = '\\end{verbatim}' @{n--; };
	 verbatim_body = any+ - (verbatim_begin|verbatim_end);
   verbatim = '\\begin{verbatim}' @{n=1;}  (verbatim_begin|verbatim_end|verbatim_body)*    verbatim_end  :> any when{!n};

   definition_begin = '\\begin{definition}' @{n++; };
   definition_end  = '\\end{definition}' @{n--; };
	 definition_body = any+ - (definition_begin|definition_end);
   definition = '\\begin{definition}' @{n=1;}  (definition_begin|definition_end|definition_body)*    definition_end  :> any when{!n};

   displaymath_begin = '\\begin{displaymath}' @{n++; };
   displaymath_end  = '\\end{displaymath}' @{n--; };
	 displaymath_body = any+ - (displaymath_begin|displaymath_end);
   displaymath = '\\begin{displaymath}' @{n=1;}  (displaymath_begin|displaymath_end|displaymath_body)*    displaymath_end  :> any when{!n};

   proposition_begin = '\\begin{proposition}' @{n++; };
   proposition_end  = '\\end{proposition}' @{n--; };
	 proposition_body = any+ - (proposition_begin|proposition_end);
   proposition = '\\begin{proposition}' @{n=1;}  (proposition_begin|proposition_end|proposition_body)*    proposition_end  :> any when{!n};

   cases_begin = '\\begin{cases}' @{n++; };
   cases_end  = '\\end{cases}' @{n--; };
	 cases_body = any+ - (cases_begin|cases_end);
   cases = '\\begin{cases}' @{n=1;}  (cases_begin|cases_end|cases_body)*    cases_end  :> any when{!n};

   remark_begin = '\\begin{remark}' @{n++; };
   remark_end  = '\\end{remark}' @{n--; };
	 remark_body = any+ - (remark_begin|remark_end);
   remark = '\\begin{remark}' @{n=1;}  (remark_begin|remark_end|remark_body)*    remark_end  :> any when{!n};

   aligned_begin = '\\begin{aligned}' @{n++; };
   aligned_end  = '\\end{aligned}' @{n--; };
	 aligned_body = any+ - (aligned_begin|aligned_end);
   aligned = '\\begin{aligned}' @{n=1;}  (aligned_begin|aligned_end|aligned_body)*    aligned_end  :> any when{!n};

   prop_begin = '\\begin{prop}' @{n++; };
   prop_end  = '\\end{prop}' @{n--; };
	 prop_body = any+ - (prop_begin|prop_end);
   prop = '\\begin{prop}' @{n=1;}  (prop_begin|prop_end|prop_body)*    prop_end  :> any when{!n};

   subequations_begin = '\\begin{subequations}' @{n++; };
   subequations_end  = '\\end{subequations}' @{n--; };
	 subequations_body = any+ - (subequations_begin|subequations_end);
   subequations = '\\begin{subequations}' @{n=1;}  (subequations_begin|subequations_end|subequations_body)*    subequations_end  :> any when{!n};

   lem_begin = '\\begin{lem}' @{n++; };
   lem_end  = '\\end{lem}' @{n--; };
	 lem_body = any+ - (lem_begin|lem_end);
   lem = '\\begin{lem}' @{n=1;}  (lem_begin|lem_end|lem_body)*    lem_end  :> any when{!n};

   thm_begin = '\\begin{thm}' @{n++; };
   thm_end  = '\\end{thm}' @{n--; };
	 thm_body = any+ - (thm_begin|thm_end);
   thm = '\\begin{thm}' @{n=1;}  (thm_begin|thm_end|thm_body)*    thm_end  :> any when{!n};

   flushright_begin = '\\begin{flushright}' @{n++; };
   flushright_end  = '\\end{flushright}' @{n--; };
	 flushright_body = any+ - (flushright_begin|flushright_end);
   flushright = '\\begin{flushright}' @{n=1;}  (flushright_begin|flushright_end|flushright_body)*    flushright_end  :> any when{!n};

   multline_begin = '\\begin{multline}' @{n++; };
   multline_end  = '\\end{multline}' @{n--; };
	 multline_body = any+ - (multline_begin|multline_end);
   multline = '\\begin{multline}' @{n=1;}  (multline_begin|multline_end|multline_body)*    multline_end  :> any when{!n};

   example_begin = '\\begin{example}' @{n++; };
   example_end  = '\\end{example}' @{n--; };
	 example_body = any+ - (example_begin|example_end);
   example = '\\begin{example}' @{n=1;}  (example_begin|example_end|example_body)*    example_end  :> any when{!n};

   gather_begin = '\\begin{gather}' @{n++; };
   gather_end  = '\\end{gather}' @{n--; };
	 gather_body = any+ - (gather_begin|gather_end);
   gather = '\\begin{gather}' @{n=1;}  (gather_begin|gather_end|gather_body)*    gather_end  :> any when{!n};

   itemdecl_begin = '\\begin{itemdecl}' @{n++; };
   itemdecl_end  = '\\end{itemdecl}' @{n--; };
	 itemdecl_body = any+ - (itemdecl_begin|itemdecl_end);
   itemdecl = '\\begin{itemdecl}' @{n=1;}  (itemdecl_begin|itemdecl_end|itemdecl_body)*    itemdecl_end  :> any when{!n};

   itemdescr_begin = '\\begin{itemdescr}' @{n++; };
   itemdescr_end  = '\\end{itemdescr}' @{n--; };
	 itemdescr_body = any+ - (itemdescr_begin|itemdescr_end);
   itemdescr = '\\begin{itemdescr}' @{n=1;}  (itemdescr_begin|itemdescr_end|itemdescr_body)*    itemdescr_end  :> any when{!n};

   description_begin = '\\begin{description}' @{n++; };
   description_end  = '\\end{description}' @{n--; };
	 description_body = any+ - (description_begin|description_end);
   description = '\\begin{description}' @{n=1;}  (description_begin|description_end|description_body)*    description_end  :> any when{!n};

   tikzpicture_begin = '\\begin{tikzpicture}' @{n++; };
   tikzpicture_end  = '\\end{tikzpicture}' @{n--; };
	 tikzpicture_body = any+ - (tikzpicture_begin|tikzpicture_end);
   tikzpicture = '\\begin{tikzpicture}' @{n=1;}  (tikzpicture_begin|tikzpicture_end|tikzpicture_body)*    tikzpicture_end  :> any when{!n};

   titlepage_begin = '\\begin{titlepage}' @{n++; };
   titlepage_end  = '\\end{titlepage}' @{n--; };
	 titlepage_body = any+ - (titlepage_begin|titlepage_end);
   titlepage = '\\begin{titlepage}' @{n=1;}  (titlepage_begin|titlepage_end|titlepage_body)*    titlepage_end  :> any when{!n};

   bmatrix_begin = '\\begin{bmatrix}' @{n++; };
   bmatrix_end  = '\\end{bmatrix}' @{n--; };
	 bmatrix_body = any+ - (bmatrix_begin|bmatrix_end);
   bmatrix = '\\begin{bmatrix}' @{n=1;}  (bmatrix_begin|bmatrix_end|bmatrix_body)*    bmatrix_end  :> any when{!n};

   lstlisting_begin = '\\begin{lstlisting}' @{n++; };
   lstlisting_end  = '\\end{lstlisting}' @{n--; };
	 lstlisting_body = any+ - (lstlisting_begin|lstlisting_end);
   lstlisting = '\\begin{lstlisting}' @{n=1;}  (lstlisting_begin|lstlisting_end|lstlisting_body)*    lstlisting_end  :> any when{!n};

   quote_begin = '\\begin{quote}' @{n++; };
   quote_end  = '\\end{quote}' @{n--; };
	 quote_body = any+ - (quote_begin|quote_end);
   quote = '\\begin{quote}' @{n=1;}  (quote_begin|quote_end|quote_body)*    quote_end  :> any when{!n};

   corollary_begin = '\\begin{corollary}' @{n++; };
   corollary_end  = '\\end{corollary}' @{n--; };
	 corollary_body = any+ - (corollary_begin|corollary_end);
   corollary = '\\begin{corollary}' @{n=1;}  (corollary_begin|corollary_end|corollary_body)*    corollary_end  :> any when{!n};

   frame_begin = '\\begin{frame}' @{n++; };
   frame_end  = '\\end{frame}' @{n--; };
	 frame_body = any+ - (frame_begin|frame_end);
   frame = '\\begin{frame}' @{n=1;}  (frame_begin|frame_end|frame_body)*    frame_end  :> any when{!n};

   quotation_begin = '\\begin{quotation}' @{n++; };
   quotation_end  = '\\end{quotation}' @{n--; };
	 quotation_body = any+ - (quotation_begin|quotation_end);
   quotation = '\\begin{quotation}' @{n=1;}  (quotation_begin|quotation_end|quotation_body)*    quotation_end  :> any when{!n};
   
   verse_begin = '\\begin{verse}' @{n++; };
   verse_end  = '\\end{verse}' @{n--; };
	 verse_body = any+ - (verse_begin|verse_end);
   verse = '\\begin{verse}' @{n=1;}  (verse_begin|verse_end|verse_body)*    verse_end  :> any when{!n};
   
   tabbing_begin = '\\begin{tabbing}' @{n++; };
   tabbing_end  = '\\end{tabbing}' @{n--; };
	 tabbing_body = any+ - (tabbing_begin|tabbing_end);
   tabbing = '\\begin{tabbing}' @{n=1;}  (tabbing_begin|tabbing_end|tabbing_body)*    tabbing_end  :> any when{!n};
   matrix_begin = '\\begin{matrix}' @{n++; };
   matrix_end  = '\\end{matrix}' @{n--; };
	 matrix_body = any+ - (matrix_begin|matrix_end);
   matrix = '\\begin{matrix}' @{n=1;}  (matrix_begin|matrix_end|matrix_body)*    matrix_end  :> any when{!n};

   list_begin = '\\begin{list}' @{n++; };
   list_end  = '\\end{list}' @{n--; };
	 list_body = any+ - (list_begin|list_end);
   list = '\\begin{list}' @{n=1;}  (list_begin|list_end|list_body)*    list_end  :> any when{!n};
   
   rem_begin = '\\begin{rem}' @{n++; };
   rem_end  = '\\end{rem}' @{n--; };
	 rem_body = any+ - (rem_begin|rem_end);
   rem = '\\begin{rem}' @{n=1;}  (rem_begin|rem_end|rem_body)*    rem_end  :> any when{!n};

   flushleft_begin = '\\begin{flushleft}' @{n++; };
   flushleft_end  = '\\end{flushleft}' @{n--; };
	 flushleft_body = any+ - (flushleft_begin|flushleft_end);
   flushleft = '\\begin{flushleft}' @{n=1;}  (flushleft_begin|flushleft_end|flushleft_body)*    flushleft_end  :> any when{!n};

left_brace = '{' @{n++; };
right_brace = '}' @{n--; };
brace_body = any - (left_brace|right_brace);
braces = '{' @{n=0;} (left_brace|right_brace|brace_body)* :> '}' when{!n};


left_bracket = '[' @{n++;};
right_bracket = ']' @{n--; };
bracket_body = any - (left_bracket|right_bracket);
brackets = '[' @{n=0;} (left_bracket|right_bracket|bracket_body)* :> ']' when{!n};

math_mode_begin = '\\[' @{n++; };
math_mode_end = '\\]' @{n--; }; 
math_mode_body = any+ - (math_mode_begin|math_mode_end);
math_mode = '\\[' @{n=1;}  (math_mode_begin|math_mode_end|math_mode_body)*    math_mode_end  :> any when{!n};

left_parens = '(' @{n++;};
right_parens = ')' @{n--; };
parens_body = any - (left_parens|right_parens);
parens = '(' @{n=0;} (left_parens|right_parens|parens_body)* :> ')' when{!n};
underscore = '_' ; 
bin_op = "+" | "-" | "*" | "/" ; 
ws = " ";
integer = "0" | [1-9] digit* ; 
summation = "\\sum" | "\\sum " underscore braces | 
"\\sum" underscore braces | 
"\\sum " underscore braces "^" braces | 
"\\sum" underscore braces "^" braces |
"\\sum" underscore braces "^" (any-'{') |
"\\sum" underscore (any-'{') "^" braces |
"\\sum" underscore (any-'{') "^" (any-'{');

integral_prefix = "\\int" |
"\\iiiint" |
"\\iiint" |
"\\iint" | 
"\\oint" ;

integral = integral_prefix | integral_prefix [ ] underscore braces | 
integral_prefix underscore braces | 
integral_prefix [ ] underscore braces "^" braces | 
integral_prefix underscore braces "^" braces |
integral_prefix underscore braces "^" (any-'{') |
integral_prefix underscore (any-'{') "^" braces |
integral_prefix underscore (any-'{') "^" (any-'{') | 
integral_prefix (any-'{') underscore (any-'{') ; 


func_normal = 
 '\\exp'|
 '\\log'|
 '\\lg'|
 '\\ln'|
 '\\sin'|
 '\\cos'|
 '\\tan'|
 '\\csc'|
 '\\sec'|
 '\\cot'|
 '\\arcsin'|
 '\\arccos'|
 '\\arctan'|
 '\\arccsc'|
 '\\arcsec'|
 '\\arccot'|
 '\\sinh'|
 '\\cosh'|
 '\\tanh'|
 '\\arsinh'|
 '\\arcosh'|
 '\\artanh';


Italic_Greek = 
'\\varGamma' |
'\\varDelta' |
'\\varTheta' |
'\\varLambda' |
'\\varXi' |
'\\varPi' |
'\\varSigma' |
'\\varUpsilon' |
'\\varPhi' |
'\\varPsi' |
'\\varOmega' ;

Math_Mode_Accents=
"\\hat{a}" |
"\\check{a}" |
"\\tilde{a}" |
"\\acute{a}" |
"\\grave{a}" |
"\\dot{a}" |
"\\ddot{a}" |
"\\breve{a}" |
"\\bar{a}" |
"\\vec{a}" |
"\\widehat{A}" |
"\\widetilde{A}";


Lowercase_Greek_Letters=
"\\alpha" |
"\\theta" |
"\\upsilon" |
"\\beta" |
"\\vartheta" |
"\\pi" |
"\\phi" |
"\\gamma" |
"\\iota" |
"\\varpi" |
"\\varphi" |
"\\delta" |
"\\kappa" |
"\\rho" |
"\\chi" |
"\\epsilon" |
"\\lambda" |
"\\varrho" |
"\\psi" |
"\\varepsilon" |
"\\mu" |
"\\sigma" |
"\\omega" |
"\\zeta" |
"\\nu" |
"\\varsigma" |
"\\eta" |
"\\xi" |
"\\tau";

Uppercase_Greek_Letters=
"\\Gamma" |
"\\Lambda" |
"\\Sigma" |
"\\Psi" |
"\\Delta" |
"\\Xi" |
"\\Upsilon" |
"\\Omega" |
"\\Theta" |
"\\Pi" |
"\\Phi";


Binary_Relations=
"\\leq" |
"\\le" |
"\\geq" |
"\\ge" |
"\\equiv" |
"\\ll" |
"\\gg" |
"\\doteq" |
"\\prec" |
"\\succ" |
"\\sim" |
"\\preceq" |
"\\succeq" |
"\\simeq" |
"\\subset" |
"\\supset" |
"\\approx" |
"\\subseteq" |
"\\supseteq" |
"\\cong" |
"\\sqsubset" |
"\\sqsupset" |
"\\Join" |
"\\sqsubseteq" |
"\\sqsupseteq" |
"\\bowtie" |
"\\in" |
"\\ni" |
"\\owns" |
"\\propto" |
"\\vdash" |
"\\dashv" |
"\\models" |
"\\mid" |
"\\parallel" |
"\\perp" |
"\\smile" |
"\\frown" |
"\\asymp" |
"\\notin" |
"\\neq" |
"\\ne";

Binary_Operators=
"+" |
"-" |
"/" |
"−" |
"\\mp" |
"\\pm" |
"\\triangleleft" |
"\\cdot" |
"\\div" |
"\\triangleright" |
"\\times" |
"\\" |
"\\setminus" |
"\\star" |
"\\cup" |
"\\cap" |
"\\ast" |
"\\sqcup" |
"\\sqcap" |
"\\circ" |
"\\vee" |
"\\lor" |
"\\wedge" |
"\\land" |
"\\bullet" |
"\\oplus" |
"\\ominus" |
"\\diamond" |
"\\odot" |
"\\oslash" |
"\\uplus" |
"\\otimes" |
"\\bigcirc" |
"\\amalg" |
"\\bigtriangleup" |
"\\bigtriangledown" |
"\\dagger" |
"\\lhd" |
"\\rhd" |
"\\ddagger" |
"\\unlhd" |
"\\unrhd" |
"\\wr";


BIG_Operators=
"\\sum" |
"\\bigcup" |
"\\bigvee" |
"\\bigoplus" |
"\\prod" |
"\\bigcap" |
"\\bigwedge" |
"\\bigotimes" |
"\\coprod" |
"\\bigsqcup" |
"\\bigodot" |
"\\int" |
"\\oint" |
"\\biguplus";

Arrows=
"\\leftarrow" |
"\\gets" |
"\\longleftarrow" |
"\\uparrow" |
"\\rightarrow" |
"\\to" |
"\\longrightarrow" |
"\\downarrow" |
"\\leftrightarrow" |
"\\longleftrightarrow" |
"\\updownarrow" |
"\\Leftarrow" |
"\\Longleftarrow" |
"\\Uparrow" |
"\\Rightarrow" |
"\\Longrightarrow" |
"\\Downarrow" |
"\\Leftrightarrow" |
"\\Longleftrightarrow" |
"\\Updownarrow" |
"\\mapsto" |
"\\longmapsto" |
"\\nearrow" |
"\\hookleftarrow" |
"\\hookrightarrow" |
"\\searrow" |
"\\leftharpoonup" |
"\\rightharpoonup" |
"\\swarrow" |
"\\leftharpoondown" |
"\\rightharpoondown" |
"\\nwarrow" |
"\\rightleftharpoons" |
"\\iff" |
"\\leadsto";


Delimiters=
"\\uparrow" |
"\\Uparrow" |
"\\lbrack" |
"\\rbrack" |
"\\downarrow" |
"\\Downarrow" |
"\\{" |
"\\lbrace" |
"\\}" |
"\\rbrace" |
"\\updownarrow" |
"\\Updownarrow" |
"\\langle" |
"\\rangle" |
"\\vert" |
"\\|" |
"\\Vert" |
"\\lfloor" |
"\\rfloor" |
"\\lceil" |
"\\rceil" |
"\\" |
"\\backslash"; 

Large_Delimiters=
"\\lgroup" |
"\\rgroup" |
"\\lmoustache" |
"\\rmoustache" |
"\\arrowvert" |
"\\Arrowvert" |
"\\bracevert"; 

Miscellaneous_Symbols=
"\\dots" |
"\\cdots" |
"\\vdots" |
"\\ddots" |
"\\hbar" |
"\\imath" |
"\\jmath" |
"\\ell" |
"\\Re" |
"\\Im" |
"\\aleph" |
"\\wp" |
"\\forall" |
"\\exists" |
"\\partial" |
"\\prime" |
"\\emptyset" |
"\\infty" |
"\\nabla" |
"\\triangle" |
"\\Box" |
"\\Diamond" |
"\\top" |
"\\surd" |
"\\diamondsuit" |
"\\clubsuit" |
"\\spadesuit" |
"\\neg" |
"\\lnot" |
"\\flat" |
"\\" |
"\\natural" |
"\\sharp"; 

Non_Mathematical_Symbols=
"\\dag" |
"\\\S" |
"\\\copyright" |
"\\\ddag" |
"\\\P" |
"\\\pounds"; 

AMS_Delimiters=
"\\\ulcorner" |
"\\\urcorner" |
"\\\llcorner" |
"\\\lrcorner"; 

AMS_Greek_and_Hebrew=
"\\\digamma" |
"\\\varkappa" |
"\\\beth" |
"\\\daleth" |
"\\\gimel"; 


AMS_Binary_Relations=
"\\lessdot" |
"\\gtrdot" |
"\\doteqdot" |
"\\Doteq" |
"\\leqslant" |
"\\geqslant" |
"\\risingdotseq" |
"\\eqslantless" |
"\\eqslantgtr" |
"\\fallingdotseq" |
"\\leqq" |
"\\geqq" |
"\\eqcirc" |
"\\lll" |
"\\llless" |
"\\ggg" |
"\\gggtr" |
"\\circeq" |
"\\lesssim" |
"\\gtrsim" |
"\\triangleq" |
"\\lessapprox" |
"\\gtrapprox" |
"\\bumpeq" |
"\\lessgtr" |
"\\gtrless" |
"\\Bumpeq" |
"\\lesseqgtr" |
"\\gtreqless" |
"\\thicksim" |
"\\lesseqqgtr" |
"\\gtreqqless" |
"\\thickapprox" |
"\\preccurlyeq" |
"\\succcurlyeq" |
"\\approxeq" |
"\\curlyeqprec" |
"\\curlyeqsucc" |
"\\backsim" |
"\\precsim" |
"\\succsim" |
"\\backsimeq" |
"\\precapprox" |
"\\succapprox" |
"\\vDash" |
"\\subseteqq" |
"\\supseteqq" |
"\\Vdash" |
"\\Subset" |
"\\Supset" |
"\\Vvdash" |
"\\sqsubset" |
"\\sqsupset" |
"\\backepsilon" |
"\\therefore" |
"\\because" |
"\\varpropto" |
"\\shortmid" |
"\\shortparallel" |
"\\between" |
"\\smallsmile" |
"\\smallfrown" |
"\\pitchfork" |
"\\vartriangleleft" |
"\\vartriangleright" |
"\\blacktriangleleft" |
"\\trianglelefteq" |
"\\trianglerighteq" |
"\\blacktriangleright";

AMS_Arrows=
"\\dashleftarrow" |
"\\dashrightarrow" |
"\\multimap" |
"\\leftleftarrows" |
"\\rightrightarrows" |
"\\upuparrows" |
"\\leftrightarrows" |
"\\rightleftarrows" |
"\\downdownarrows" |
"\\Lleftarrow" |
"\\Rrightarrow" |
"\\upharpoonleft" |
"\\twoheadleftarrow" |
"\\twoheadrightarrow" |
"\\upharpoonright" |
"\\leftarrowtail" |
"\\rightarrowtail" |
"\\downharpoonleft" |
"\\leftrightharpoons" |
"\\rightleftharpoons" |
"\\downharpoonright" |
"\\Lsh" |
"\\Rsh" |
"\\rightsquigarrow" |
"\\" |
"\\looparrowleft" |
"\\looparrowright" |
"\\leftrightsquigarrow" |
"\\curvearrowleft" |
"\\curvearrowright" |
"\\circlearrowleft" |
"\\circlearrowright"; 

AMS_Negated_Binary_Relations_and_Arrows=
"\\nless" |
"\\ngtr" |
"\\varsubsetneqq" |
"\\lneq" |
"\\gneq" |
"\\varsupsetneqq" |
"\\nleq" |
"\\ngeq" |
"\\nsubseteqq" |
"\\nleqslant" |
"\\ngeqslant" |
"\\nsupseteqq" |
"\\lneqq" |
"\\gneqq" |
"\\nmid" |
"\\lvertneqq" |
"\\gvertneqq" |
"\\nparallel" |
"\\nleqq" |
"\\ngeqq" |
"\\nshortmid" |
"\\lnsim" |
"\\gnsim" |
"\\nshortparallel" |
"\\lnapprox" |
"\\gnapprox" |
"\\nsim" |
"\\nprec" |
"\\nsucc" |
"\\ncong" |
"\\npreceq" |
"\\nsucceq" |
"\\nvdash" |
"\\precneqq" |
"\\succneqq" |
"\\nvDash" |
"\\precnsim" |
"\\succnsim" |
"\\nVdash" |
"\\precnapprox" |
"\\succnapprox" |
"\\nVDash" |
"\\subsetneq" |
"\\supsetneq" |
"\\ntriangleleft" |
"\\varsubsetneq" |
"\\varsupsetneq" |
"\\ntriangleright" |
"\\nsubseteq" |
"\\nsupseteq" |
"\\ntrianglelefteq" |
"\\subsetneqq" |
"\\supsetneqq" |
"\\ntrianglerighteq" |
"\\nleftarrow" |
"\\nrightarrow" |
"\\nleftrightarrow" |
"\\nLeftarrow" |
"\\nRightarrow" |
"\\nLeftrightarrow";

AMS_Binary_Operators= 
"\\dotplus" |
"\\centerdot" |
"\\intercal" |
"\\ltimes" |
"\\rtimes" |
"\\divideontimes" |
"\\Cup" |
"\\doublecup" |
"\\Cap" |
"\\doublecap" |
"\\smallsetminus" |
"\\veebar" |
"\\barwedge" |
"\\doublebarwedge" |
"\\boxplus" |
"\\boxminus" |
"\\circleddash" |
"\\boxtimes" |
"\\boxdot" |
"\\circledcirc" |
"\\leftthreetimes" |
"\\rightthreetimes" |
"\\circledast" |
"\\curlyvee" |
"\\curlywedge";

AMS_Miscellaneous=
"\\hbar" |
"\\hslash" |
"\\Bbbk" |
"\\square" |
"\\blacksquare" |
"\\circledS" |
"\\vartriangle" |
"\\blacktriangle" |
"\\complement" |
"\\triangledown" |
"\\blacktriangledown" |
"\\Game" |
"\\lozenge" |
"\\blacklozenge" |
"\\bigstar" |
"\\angle" |
"\\measuredangle" |
"\\sphericalangle" |
"\\diagup" |
"\\diagdown" |
"\\backprime" |
"\\nexists" |
"\\Finv" |
"\\varnothing" |
"\\eth" |
"\\mho" ;

Math_Alphabets=
"\\mathbb" braces |
"\\mathbf" braces |
"\\mathcal" braces |
"\\mathfrak" braces|
"\\mathit" braces|
"\\mathnormal" braces|
"\\mathrm" braces |
"\\mathscr" braces|
"\\mathsf" braces|
"\\mathbb" braces; 

symbols = "x" | "y" | "z" | "t" |"w" | "a" | "b" |"c" | "s" | "p" | "W" | "u"|"v"|"w" | "n"; 

latex = eq | 
symbols | 
Math_Mode_Accents |
Lowercase_Greek_Letters | 
Uppercase_Greek_Letters |
Binary_Relations | 
Binary_Operators | 
BIG_Operators | 
Arrows | 
Delimiters | 
Large_Delimiters | 
Miscellaneous_Symbols | 
Non_Mathematical_Symbols | 
AMS_Delimiters | 
AMS_Greek_and_Hebrew | 
AMS_Binary_Relations | 
AMS_Arrows | 
AMS_Negated_Binary_Relations_and_Arrows | 
AMS_Binary_Operators | 
AMS_Miscellaneous | 
Math_Alphabets | 
"&=" |
"+" | 
"," |
"<" |  
"<<" |
"=" | 
">" | 
"\\," | 
"\\\\"  |
"^" |
"|" |
[ ]+ "&" [ ]+ |
"$" (any-"$"){1,80} "$"  | 
"a" |
"A" |
"\\abs" |
abstract  |
"\\acute" braces?|
"\\add" |
"\\address" |
"\\addtocontents" |
"\\addtocounter" |
"\\addtolength" |
"\\affiliation" braces |
align  |
aligned  |
"\\alph" |
"\\Alph" |
alpha underscore (any-'{') | 
alpha underscore (any-'{') "^" (any-'{')| 
alpha underscore braces |  
alpha underscore braces "^" braces |
"\\and" |
"\\appendix" |
"\\arg" |
array  |
"\\arraycolsep" |
"\\arrayrulewidth" |
"\\arraystretch" |
"\\author" |
"\\author" braces |
"\\autoref" braces |
"b" |
"\\backslash" |
"\\bar" braces? |
"\\baselineskip" |
"\\baselinestretch" |
"\\Bbb" |
"\\begin" braces |
"\\begin[pos]" |
"\\bf" |
"\\bibitem" |
"\\bibitem" braces |
"\\bibitem text" |
"\\binom" |
"\\binom" braces braces | 
bin_op | 
bmatrix  |
"\\bmod" |
"\\boldmath" |
"\\boldsymbol" |
"\\bot" |
"\\bottomfraction" |
braces  |
braces "^" braces |
brackets  |
"\\breve" braces? |
"\\caption" braces? |
cases  |
center  |
"\\centerline" braces? |
"\\cfrac" |
"\\check" braces? |
"\\cite" braces |
comment |
corollary  |
"\\d" |
"\\date" braces |
"\\ddot" braces |
definition  |
"\\delta " underscore braces |
"\\delta" underscore braces | 
description  |
"\\dfrac" |
"\\dfrac" (any-'{') (any-'{') |
"\\dfrac" (any-'{') braces |
"\\dfrac" braces (any-'{') |
"\\dfrac" braces braces | 
displaymath  |
"\\documentclass" braces? |
"\\documentclass" brackets braces |
"\\documentstyle" |
"\\dot" braces? |
"\\doublerulesep" |
"\\downarrow" |
"\\Downarrow" |
"\\dp" |
"d" ("x" | "y" | "z") | 
"e" "^" braces |
"\\email" braces |
"\\emph" braces |
"\\end" braces |
enumerate  |
"\\eq" braces |
eqnarray  |
"\\eqref" braces |
equation |
example  |
"\\exists" |
"f" |
"\\f" braces |
figure  |
flushleft  |
flushright  |
"\\fmf" braces |
"\\fmfforce" braces |
"\\fn" |
"\\fnsymbol" |
"\\footnote" braces |
"f" parens |
"\\frac" |
"\\frac" (any-'{') (any-'{')  | 
"\\frac" (any-'{') braces |
"\\frac" braces (any-'{') |
"\\frac" braces braces | 
func_normal |
func_normal braces |
func_normal parens |
"g" |
"G" |
gather  |
"\\gcd" |
"\\gdef" |
"\\ge" |
"\\genfrac" |
"\\geq" |
"\\gets" |
"\\gg" |
"\\global" |
"\\glossary" |
"\\glossaryentry" |
"g" parens |
"G" parens |
"\\grave" braces? |
"\\hat" braces? |
"\\hbox" braces |
"\\href" braces braces |
"\\hrulefill" |
"\\hspace" |
"\\hspace*" |
"\\hspace" braces |
"\\huge" |
"\\Huge" |
"\\hyphenation" |
"-i" | 
"\\idotsint" |
"\\iffalse" |
"\\ifvoid" |
"\\ifx" |
"\\in" |
"\\include" |
"\\includeonly" |
"\\index" |
"\\indexentry" |
"\\indexspace" |
"\\inf" |
"\\input" |
"\\input" braces |
integer | 
integer? alpha "^" (any-'{') |
integer? alpha "^" braces |
"-"? integer ("x"|"y"|"z") |  
"-"? integral |
"\\interval" |
"\\intextsep" |
"I" parens | 
"\\it" |
Italic_Greek |
"\\item" |
itemdecl  |
itemdescr  |
"\\itemindent" |
itemize  |
"K" |
"\\ker" |
"\\ket" braces |
"\\keywords" braces |
"\\kill" |
"k" parens |
"\\l" |
"\\label" |
"\\label" braces |
"\\left" parens |
"\\left" brackets |
lemma  |
"\\lim " underscore braces |
"\\lim" underscore braces |
list |
lstlisting  |
math |

"\\mathinner" |
math_mode |
"\\mathop" |
"\\mathrm" braces |
"\\mathrm{d}" alpha |
matrix  |
"\\mbox" braces |
minipage  |
multline  |
"-"? "\\operatorname" braces |
parens  |
parens "^" (any-'{') | 
parens "^" braces  |
picture  |
pmatrix  |
proof  |
prop  |
proposition  |
quote  |
"\\r" |
"\\ref" braces |
"\\relax" |
rem  |
remark  |
"\\renewcommand" braces? |
"\\setcounter" braces? |
"\\setlength" braces |
"\\sf" |
split  |
"\\sqrt" braces |
"\\sqrt" brackets |
"\\stackrel" braces |
subequations  |
summation |
table  |
"\\textbf" braces |
"\\text" braces |
"\\textit" braces |
"\texttt" braces |
"\\tfrac" |
"\\tfrac" (any-'{') (any-'{') | 
"\\tfrac" (any-'{') braces |
"\\tfrac" braces (any-'{') |
"\\tfrac" braces braces | 
thebibliography  |
"\\theequation" |
theorem  |
thm  |
"\\tilde" braces? |
"\\title" braces |
titlepage  |
"\\u" |
"\\underline" braces |
underscore | 
underscore braces "^" braces |
"\\url" braces |
"\\usebox" |
"\\usepackage" braces |
"\\v" |
"\\vec" braces? |
verbatim  |
"\\vspace" braces |
"\\widehat" braces? |
"\\widetilde" braces? | 
"\\wp" |
"\\wr" |
ws | 
"\\wt" |
"\\xdef" |
"\\xi" |
"\\Xi" |
"\\xleftarrow" |
"\\xrightarrow" |
"\\year" |
"\\zeta" |
"\\zeta" "^" braces; 
}%%
