org 000h
mov a,#38h
acall cmd
mov a, #ofh
acall cmd
mov a,#06h
acall cmd
mov a,#01h
acall cmd
mov a,#80h
acall cmd
mov a, #'R'
acall display
mov a, #'R'
acall display
mov a, #'R'
acall display
mov a, #'R'
acall display
mov a, #'R'
acall display
mov a, #'R'
acall display
cmd:mov p1,a
	clr p2.0
	clr p2.1
	acall delay
	clr p2.2
	ret
display: mov p1,a
	setb p2.0
	clr p2.1
	setb p2.2
	acall delay
	clr p2.2
	ret
delay:mov r2, #010h
	l3:mov r3, #20h
	l2:mov r4, #30h
	l1:djnz r4,l1
		djnz r3,l2
		djnz r2,l3
		ret
