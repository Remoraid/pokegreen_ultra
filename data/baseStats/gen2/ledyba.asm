LedybaBaseStats: ; 385d6 (e:45d6)
db DEX_LEDYBA ; pokedex id
db 40 ; base hp
db 20 ; base attack
db 30 ; base defense
db 55 ; base speed
db 40 ; base special
db BUG ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 54 ; base exp yield
INCBIN "pic/bmon/ledyba.pic",0,1 ; 55, sprite dimensions
dw LedybaPicFront
dw LedybaPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,3,6
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 28,31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50,55
db BANK(LedybaPicFront)
