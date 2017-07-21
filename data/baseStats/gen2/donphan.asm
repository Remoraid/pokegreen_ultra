DonphanBaseStats: ; 38fe6 (e:4fe6)
db DEX_DONPHAN ; pokedex id
db 90 ; base hp
db 120 ; base attack
db 120 ; base defense
db 60 ; base speed
db 50 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 60 ; catch rate
db 189 ; base exp yield
INCBIN "pic/bmon/donphan.pic",0,1 ; 77, sprite dimensions
dw DonphanPicFront
dw DonphanPicBack
; attacks known at lvl 0
db HORN_ATTACK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,15
	tmlearn 18,20
	tmlearn 26,27,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(DonphanPicFront)
