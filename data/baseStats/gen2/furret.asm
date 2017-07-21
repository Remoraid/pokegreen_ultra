FurretBaseStats: ; 385d6 (e:45d6)
db DEX_FURRET ; pokedex id
db 85 ; base hp
db 76 ; base attack
db 64 ; base defense
db 90 ; base speed
db 45 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 90 ; catch rate
db 116 ; base exp yield
INCBIN "pic/bmon/furret.pic",0,1 ; 55, sprite dimensions
dw FurretPicFront
dw FurretPicBack
; attacks known at lvl 0
db SCRATCH
db DEFENSE_CURL
db QUICK_ATTACK
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,14,15
	tmlearn 20,24
	tmlearn 28,31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50,51,53,54
db BANK(FurretPicFront)
