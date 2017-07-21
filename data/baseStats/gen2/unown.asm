UnownBaseStats: ; 38aa6 (e:4aa6)
db DEX_UNOWN ; pokedex id
db 48 ; base hp
db 72 ; base attack
db 48 ; base defense
db 48 ; base speed
db 72 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 225 ; catch rate
db 61 ; base exp yield
INCBIN "pic/bmon/unown_a.pic",0,1 ; 55, sprite dimensions
dw UnownPicFront
dw UnownPicBack
; attacks known at lvl 0
db HIDDEN_POWER
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db BANK(UnownPicFront)
