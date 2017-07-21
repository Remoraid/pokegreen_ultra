MeganiumBaseStats: ; 385d6 (e:45d6)
db DEX_MEGANIUM ; pokedex id
db 80 ; base hp
db 82 ; base attack
db 100 ; base defense
db 80 ; base speed
db 83 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 208 ; base exp yield
INCBIN "pic/bmon/meganium.pic",0,1 ; 55, sprite dimensions
dw MeganiumPicFront
dw MeganiumPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db RAZOR_LEAF
db REFLECT
db 3 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 18,20,21,22
	tmlearn 26,31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,51,54,55
db BANK(MeganiumPicFront)
