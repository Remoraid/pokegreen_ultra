AzumarillBaseStats: ; 385d6 (e:45d6)
db DEX_AZUMARILL ; pokedex id
db 100 ; base hp
db 50 ; base attack
db 80 ; base defense
db 50 ; base speed
db 80 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 75 ; catch rate
db 153 ; base exp yield
INCBIN "pic/bmon/azumarill.pic",0,1 ; 55, sprite dimensions
dw AzumarillPicFront
dw AzumarillPicBack
; attacks known at lvl 0
db TACKLE
db DEFENSE_CURL
db TAIL_WHIP
db WATER_GUN
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 19,20
	tmlearn 31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50,53,54
db BANK(AzumarillPicFront)
