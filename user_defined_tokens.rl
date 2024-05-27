definitions from https://github.com/sympy/sympy/parsing/latex/LaTeX.g4

ADD = "+";
SUB = "-";
MUL = "*";
DIV = "/";

L_PAREN = "(";
R_PAREN = ")";
L_BRACE = "{";
R_BRACE = "}";
L_BRACE_LITERAL = "\\{";
R_BRACE_LITERAL = "\\}";
L_BRACKET = "[";
R_BRACKET = "]";

BAR = "|";
R_BAR = "\\right|";
L_BAR = "\\left|";

L_ANGLE = "\\langle";
R_ANGLE = "\\rangle";
FUNC_LIM = "\\lim";
LIM_APPROACH_SYM:
	"\\to"
	| "\\rightarrow"
	| "\\Rightarrow"
	| "\\longrightarrow"
	| "\\Longrightarrow";
FUNC_INT:
    "\\int"
    | "\\int\\limits";
FUNC_SUM = "\\sum";
FUNC_PROD = "\\prod";

FUNC_EXP = "\\exp";
FUNC_LOG = "\\log";
FUNC_LG = "\\lg";
FUNC_LN = "\\ln";
FUNC_SIN = "\\sin";
FUNC_COS = "\\cos";
FUNC_TAN = "\\tan";
FUNC_CSC = "\\csc";
FUNC_SEC = "\\sec";
FUNC_COT = "\\cot";

FUNC_ARCSIN = "\\arcsin";
FUNC_ARCCOS = "\\arccos";
FUNC_ARCTAN = "\\arctan";
FUNC_ARCCSC = "\\arccsc";
FUNC_ARCSEC = "\\arcsec";
FUNC_ARCCOT = "\\arccot";

FUNC_SINH = "\\sinh";
FUNC_COSH = "\\cosh";
FUNC_TANH = "\\tanh";
FUNC_ARSINH = "\\arsinh";
FUNC_ARCOSH = "\\arcosh";
FUNC_ARTANH = "\\artanh";

L_FLOOR = "\\lfloor";
R_FLOOR = "\\rfloor";
L_CEIL = "\\lceil";
R_CEIL = "\\rceil";

FUNC_SQRT = "\\sqrt";
FUNC_OVERLINE = "\\overline";

CMD_TIMES = "\\times";
CMD_CDOT = "\\cdot";
CMD_DIV = "\\div";
CMD_FRAC:
    "\\frac"
    | "\\dfrac"
    | "\\tfrac";
CMD_BINOM = "\\binom";
CMD_DBINOM = "\\dbinom";
CMD_TBINOM = "\\tbinom";

CMD_MATHIT = "\\mathit";

UNDERSCORE = "_";
CARET = "^";
COLON = ":";
