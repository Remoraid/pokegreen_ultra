NatuBaseStats: ; 385d6 (e:45d6)
db DEX_NATU ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 45 ; base defense
db 70 ; base speed
db 70 ; base special
db PSYCHIC ; species type 1
db FLYING ; species type 2
db 190 ; catch rate
db 73 ; base exp yield
INCBIN "pic/bmon/natu.pic",0,1 ; 55, sprite dimensions
dw NatuPicFront
dw NatuPicBack
; attacks known at lvl 0
db PECK
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 29,30,31,32
	tmlearn 33,34,39
	tmlearn 42,43,44,45
	tmlearn 50,55
db BANK(NatuPicFront)
