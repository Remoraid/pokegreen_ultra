LanturnBaseStats: ; 385d6 (e:45d6)
db DEX_LANTURN ; pokedex id
db 125 ; base hp
db 58 ; base attack
db 58 ; base defense
db 67 ; base speed
db 76 ; base special
db WATER ; species type 1
db ELECTRIC ; species type 2
db 75 ; catch rate
db 156 ; base exp yield
INCBIN "pic/bmon/lanturn.pic",0,1 ; 55, sprite dimensions
dw LanturnPicFront
dw LanturnPicBack
; attacks known at lvl 0
db BUBBLE
db THUNDER_WAVE
db SUPERSONIC
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,24
	tmlearn 25,31,32
	tmlearn 34,39,40
	tmlearn 44,45
	tmlearn 50,53,55
db BANK(LanturnPicFront)
