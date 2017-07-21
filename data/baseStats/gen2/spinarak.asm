SpinarakBaseStats: ; 385d6 (e:45d6)
db DEX_SPINARAK ; pokedex id
db 40 ; base hp
db 60 ; base attack
db 40 ; base defense
db 30 ; base speed
db 40 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 54 ; base exp yield
INCBIN "pic/bmon/spinarak.pic",0,1 ; 55, sprite dimensions
dw SpinarakPicFront
dw SpinarakPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 28,29,31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,55
db BANK(SpinarakPicFront)
