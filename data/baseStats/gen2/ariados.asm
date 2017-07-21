AriadosBaseStats: ; 385d6 (e:45d6)
db DEX_ARIADOS ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 70 ; base defense
db 40 ; base speed
db 60 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 134 ; base exp yield
INCBIN "pic/bmon/ariados.pic",0,1 ; 55, sprite dimensions
dw AriadosPicFront
dw AriadosPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db SCARY_FACE
db CONSTRICT
db 4 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 28,29,31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,55
db BANK(AriadosPicFront)
