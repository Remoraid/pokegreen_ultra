TogeticBaseStats: ; 385d6 (e:45d6)
db DEX_TOGETIC ; pokedex id
db 55 ; base hp
db 40 ; base attack
db 85 ; base defense
db 40 ; base speed
db 80 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 75 ; catch rate
db 114 ; base exp yield
INCBIN "pic/bmon/togetic.pic",0,1 ; 55, sprite dimensions
dw TogeticPicFront
dw TogeticPicBack
; attacks known at lvl 0
db GROWL
db CHARM
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,2,5,6,8
	tmlearn 9,10,11,12,15
	tmlearn 18,19,20,22
	tmlearn 29,31,32
	tmlearn 33,34,35,38,39,40
	tmlearn 41,42,43,44,45
	tmlearn 50,52,55
db BANK(TogeticPicFront)
