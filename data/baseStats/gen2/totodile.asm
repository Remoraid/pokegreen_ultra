TotodileBaseStats: ; 385d6 (e:45d6)
db DEX_TOTODILE ; pokedex id
db 50 ; base hp
db 65 ; base attack
db 64 ; base defense
db 43 ; base speed
db 44 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 66 ; base exp yield
INCBIN "pic/bmon/totodile.pic",0,1 ; 55, sprite dimensions
dw TotodilePicFront
dw TotodilePicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,2,3,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 18,19,20
	tmlearn 28,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,51,53
db BANK(TotodilePicFront)
