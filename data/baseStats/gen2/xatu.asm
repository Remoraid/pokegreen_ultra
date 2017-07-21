XatuBaseStats: ; 385d6 (e:45d6)
db DEX_XATU ; pokedex id
db 65 ; base hp
db 75 ; base attack
db 70 ; base defense
db 95 ; base speed
db 95 ; base special
db PSYCHIC ; species type 1
db FLYING ; species type 2
db 75 ; catch rate
db 171 ; base exp yield
INCBIN "pic/bmon/xatu.pic",0,1 ; 55, sprite dimensions
dw XatuPicFront
dw XatuPicBack
; attacks known at lvl 0
db PECK
db LEER
db NIGHT_SHADE
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 29,30,31,32
	tmlearn 33,34,39
	tmlearn 42,43,44,45
	tmlearn 50,52,55
db BANK(XatuPicFront)
