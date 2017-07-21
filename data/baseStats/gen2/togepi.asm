TogepiBaseStats: ; 385d6 (e:45d6)
db DEX_TOGEPI ; pokedex id
db 35 ; base hp
db 20 ; base attack
db 60 ; base defense
db 20 ; base speed
db 40 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 190 ; catch rate
db 74 ; base exp yield
INCBIN "pic/bmon/togepi.pic",0,1 ; 55, sprite dimensions
dw TogepiPicFront
dw TogepiPicBack
; attacks known at lvl 0
db GROWL
db CHARM
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12
	tmlearn 18,19,20,22
	tmlearn 29,31,32
	tmlearn 33,34,35,38,39,40
	tmlearn 41,42,44,45
	tmlearn 50,55
db BANK(TogepiPicFront)
