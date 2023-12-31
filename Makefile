NAME = Thummala Uttam Kumar Reddy
EMAIL = 200010052@iitdh.ac.in

dev :
	@echo $(NAME)
	@echo $(EMAIL)
compiler: parser.tab.cpp lex.yy.cpp
	@g++ main.cpp lex.yy.cpp parser.tab.cpp -o compiler
parser.tab.cpp:
	@bison -d  -o parser.tab.cpp parser.ypp
lex.yy.cpp: lex.lpp
	@flex  -o lex.yy.cpp $<

clean: 
	@rm -f lex.yy.cpp
	@rm -f parser.tab.cpp
	@rm -f parser.tab.hpp
	@rm -f compiler
	
