MarillBaseStats: ; 385d6 (e:45d6)
db DEX_MARILL ; pokedex id
db 70 ; base hp
db 20 ; base attack
db 50 ; base defense
db 40 ; base speed
db 50 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 190 ; catch rate
db 58 ; base exp yield
INCBIN "pic/bmon/marill.pic",0,1 ; 55, sprite dimensions
dw MarillPicFront
dw MarillPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 19,20
	tmlearn 31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50,53
db BANK(MarillPicFront)
