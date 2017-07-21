MagcargoBaseStats: ; 38432 (e:4432)
db DEX_MAGCARGO ; pokedex id
db 50 ; base hp
db 50 ; base attack
db 120 ; base defense
db 30 ; base speed
db 80 ; base special
db FIRE ; species type 1
db ROCK ; species type 2
db 75 ; catch rate
db 154 ; base exp yield
INCBIN "pic/bmon/magcargo.pic",0,1 ; 66, sprite dimensions
dw MagcargoPicFront
dw MagcargoPicBack
; attacks known at lvl 0
db SMOG
db EMBER
db ROCK_THROW
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 10,15
	tmlearn 20
	tmlearn 26,31,32
	tmlearn 34,38
	tmlearn 44,47,48
	tmlearn 50,54
db BANK(MagcargoPicFront)