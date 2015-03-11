"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" LANGUAGE:		LOLCODE
""""" AUTHOR:		ThÃ©ophile BASTIAN, Christine Dodrill
""""" LAST CHANGE:	2013 Nov 14
""""" LICENSE:		GNU GPLv3
""""" SYNTAX HIGHLIGHTING FOR VIM!!1

if exists("b:current_syntax")
	finish
endif

syn region LolMultiComment start=/OBTW/ end=/TLDR/
syn match LolLineComment 'BTW.*$'
syn keyword LolOperator
			\ AN WTF? OMG OMGWTF GTFO
syn keyword LolKeyword
			\ R ITZ OIC IS NOW A MAEK MEBBE YR PLZ
syn keyword LolVarDec
			\ I HAS A
syn match LolSpecChar ":)"
syn match LolSpecChar ":>"
syn match LolSpecChar ":\""
syn match LolSpecChar ":o"
syn match LolSpecChar "::"
syn match LolBlock "O RLY?"
syn match LolBlock "YA RLY"
syn match LolBlock "NO WAI"
syn match LolBlock "FOUND YR"
syn match LolBlock "FOUND UR"
syn match LolBlock "HOW DUZ I"
syn match LolBlock "IF U SAY SO"
syn match LolBlock "AWSUM THX"
syn match LolBlock "O NOES"
syn match LolBlock "O HAI IM"
syn match LolBlock "KTHX"
syn match LolBlock "HAI"
syn match LolBlock "KTHXBYE"
syn keyword LolType
			\ TROOF YARN NUMBR NUMBAR NOOB
syn keyword LolBool WIN FAIL
syn match LolNum '[^A-Za-z_][+-]\?\d\+'
syn match LolNum '[^A-Za-z_][+-]\?\d\+\.\d*'
syn match LolString '".*"'
syn match LolInclude "CAN HAS [A-Za-z]\+?"
syn match LolRepeat "IM IN YR "
syn match LolRepeat "IM OUTTA YR "
syn keyword LolBaseFunc
			\ VISIBLE INVISIBLE GIMMEH
syn match LolIT " IT "
syn keyword LolMath
			\ SUM DIFF PRODUKT QUOSHUNT MOD UPPIN NERFIN LOLG POWR 
syn keyword LolComparator
			\ BIGGR SMALLR BOTH EITHER WON NOT ALL OF ANY SAEM DIFFRINT

""" Defining highlighting ---
command -nargs=+ HiLink hi link <args>

HiLink LolMultiComment Comment
HiLink LolLineComment Comment
HiLink LolOperator Title
HiLink LolKeyword Statement
HiLink LolEscapedChar SpecialChar
HiLink LolBool Boolean
HiLink LolNum Number
HiLink LolString String
HiLink LolInclude Include
HiLink LolRepeat Delimiter
HiLink LolBaseFunc Function
HiLink LolSpecChar Special
HiLink LolVarDec StorageClass
HiLink LolBlock Type
HiLink LolIT Special
HiLink LolMath PreProc
HiLink LolComparator Title

delcommand HiLink

let b:current_syntax="lolcode"
