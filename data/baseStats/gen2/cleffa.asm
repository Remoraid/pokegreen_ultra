CleffaBaseStats: ; 38796 (e:4796)
db DEX_CLEFFA ; pokedex id
db 60 ; base hp
db 25 ; base attack
db 28 ; base defense
db 15 ; base speed
db 45 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 150 ; catch rate
db 37 ; base exp yield
INCBIN "pic/bmon/cleffa.pic",0,1 ; 55, sprite dimensions
dw CleffaPicFront
dw CleffaPicBack
; attacks known at lvl 0
db POUND
db CHARM
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,35,38,40
	tmlearn 44,45,46
	tmlearn 49,50,55
db BANK(CleffaPicFront)
