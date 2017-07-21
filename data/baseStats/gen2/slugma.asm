SlugmaBaseStats: ; 38432 (e:4432)
db DEX_SLUGMA ; pokedex id
db 40 ; base hp
db 40 ; base attack
db 40 ; base defense
db 20 ; base speed
db 70 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 78 ; base exp yield
INCBIN "pic/bmon/slugma.pic",0,1 ; 55, sprite dimensions
dw SlugmaPicFront
dw SlugmaPicBack
; attacks known at lvl 0
db SMOG
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 10
	tmlearn 20
	tmlearn 31,32
	tmlearn 34,38
	tmlearn 44,48
	tmlearn 50
db BANK(SlugmaPicFront)