MareepBaseStats: ; 385d6 (e:45d6)
db DEX_MAREEP ; pokedex id
db 55 ; base hp
db 40 ; base attack
db 40 ; base defense
db 35 ; base speed
db 65 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 235 ; catch rate
db 59 ; base exp yield
INCBIN "pic/bmon/mareep.pic",0,1 ; 55, sprite dimensions
dw MareepPicFront
dw MareepPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20,24
	tmlearn 25,31,32
	tmlearn 34,39,40
	tmlearn 44,45
	tmlearn 50,55
db BANK(MareepPicFront)
