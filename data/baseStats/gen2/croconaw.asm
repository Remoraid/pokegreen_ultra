CroconawBaseStats: ; 385d6 (e:45d6)
db DEX_CROCONAW ; pokedex id
db 65 ; base hp
db 80 ; base attack
db 80 ; base defense
db 58 ; base speed
db 59 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 143 ; base exp yield
INCBIN "pic/bmon/croconaw.pic",0,1 ; 55, sprite dimensions
dw CroconawPicFront
dw CroconawPicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db RAGE
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,2,3,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 18,19,20
	tmlearn 28,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,51,53,54
db BANK(CroconawPicFront)
