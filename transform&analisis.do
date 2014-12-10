*Transformaci—n de las variables*

rename var97 edad
rename var122 ideologia

gen votopodemos=0
replace votopodemos=1 if var210==4

gen lasexta=0
replace lasexta=1 if var63==6
gen cuatro=0
replace cuatro=1 if var63==4

*An‡lisis*
logit votopodemos lasexta edad ideologia if ideologia<11
prchange
prchange, x(edad 21)
prchange, x(edad 70)
prchange, x(ideologia 3)
prchange, x(ideologia 8)
prchange, x(edad 21 ideologia 3)
prchange, x(edad 70 ideologia 8)


logit votopodemos cuatro edad ideologia if ideologia<11
prchange
prchange, x(edad 21)
prchange, x(edad 70)
prchange, x(ideologia 3)
prchange, x(ideologia 8)
prchange, x(edad 21 ideologia 3)
prchange, x(edad 70 ideologia 8)

