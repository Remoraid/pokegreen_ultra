LedianBaseStats: ; 385d6 (e:45d6)
db DEX_LEDIAN ; pokedex id
db 55 ; base hp
db 35 ; base attack
db 50 ; base defense
db 85 ; base speed
db 55 ; base special
db BUG ; species type 1
db FLYING ; species type 2
db 90 ; catch rate
db 134 ; base exp yield
INCBIN "pic/bmon/ledian.pic",0,1 ; 55, sprite dimensions
dw LedianPicFront
dw LedianPicBack
; attacks known at lvl 0
db TACKLE
db SUPERSONIC
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,3,6
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 28,31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50,55
db BANK(LedianPicFront)
