; menu sprites
const_value SET 1
	const ICON_POLIWAG
	const ICON_JIGGLYPUFF
	const ICON_DIGLETT
	const ICON_PIKACHU
	const ICON_STARYU
	const ICON_FISH
	const ICON_BIRD
	const ICON_MONSTER
	const ICON_CLEFAIRY
	const ICON_ODDISH
	const ICON_SCYTHER
	const ICON_GHOST
	const ICON_LAPRAS
	const ICON_HUMANSHAPE
	const ICON_FOX
	const ICON_EQUINE
	const ICON_SHELL
	const ICON_BLOB
	const ICON_SERPENT
	const ICON_VOLTORB
	const ICON_SQUIRTLE
	const ICON_BULBASAUR
	const ICON_CHARMANDER
	const ICON_CATERPILLAR
	const ICON_UNOWN
	const ICON_GEODUDE
	const ICON_FIGHTER
	const ICON_EGG
	const ICON_JELLYFISH
	const ICON_MOTH
	const ICON_BAT
	const ICON_SNORLAX
	const ICON_HO_OH
	const ICON_LUGIA
	const ICON_GYARADOS
	const ICON_SLOWPOKE
	const ICON_SUDOWOODO
	const ICON_BIGMON
	const ICON_FOSSIL
	const ICON_SEEL
	const ICON_BUG
	const ICON_FLOWER
	const ICON_KOFFING
	const ICON_ARBOK
	const ICON_SANDSHREW
	const ICON_CHANSEY
	const ICON_SUICUNE
	const ICON_ENTEI
	const ICON_RAIKOU

; overworld sprites
const_value = 1

	const SPRITE_RED                       ; $01
	const SPRITE_BLUE                      ; $02
	const SPRITE_OAK                       ; $03
	const SPRITE_BUG_CATCHER               ; $04
	const SPRITE_SLOWBRO                   ; $05
	const SPRITE_LASS                      ; $06
	const SPRITE_BLACK_HAIR_BOY_1          ; $07
	const SPRITE_LITTLE_GIRL               ; $08
	const SPRITE_BIRD                      ; $09
	const SPRITE_FAT_BALD_GUY              ; $0a
	const SPRITE_GAMBLER                   ; $0b
	const SPRITE_BLACK_HAIR_BOY_2          ; $0c
	const SPRITE_GIRL                      ; $0d
	const SPRITE_HIKER                     ; $0e
	const SPRITE_FOULARD_WOMAN             ; $0f
	const SPRITE_GENTLEMAN                 ; $10
	const SPRITE_DAISY                     ; $11
	const SPRITE_BIKER                     ; $12
	const SPRITE_SAILOR                    ; $13
	const SPRITE_COOK                      ; $14
	const SPRITE_BIKE_SHOP_GUY             ; $15
	const SPRITE_MR_FUJI                   ; $16
	const SPRITE_GIOVANNI                  ; $17
	const SPRITE_ROCKET                    ; $18
	const SPRITE_MEDIUM                    ; $19
	const SPRITE_WAITER                    ; $1a
	const SPRITE_SILPH_WOMAN               ; $1b
	const SPRITE_MOM_GEISHA                ; $1c
	const SPRITE_BRUNETTE_GIRL             ; $1d
	const SPRITE_LANCE                     ; $1e
	const SPRITE_OAK_SCIENTIST_AIDE        ; $1f
	const SPRITE_OAK_AIDE                  ; $20
	const SPRITE_ROCKER                    ; $21
	const SPRITE_SWIMMER                   ; $22
	const SPRITE_WHITE_PLAYER              ; $23
	const SPRITE_GYM_HELPER                ; $24
	const SPRITE_OLD_PERSON                ; $25
	const SPRITE_MART_GUY                  ; $26
	const SPRITE_FISHER                    ; $27
	const SPRITE_OLD_MEDIUM_WOMAN          ; $28
	const SPRITE_NURSE                     ; $29
	const SPRITE_CABLE_CLUB_WOMAN          ; $2a
	const SPRITE_MR_MASTERBALL             ; $2b
	const SPRITE_LAPRAS_GIVER              ; $2c
	const SPRITE_WARDEN                    ; $2d
	const SPRITE_SS_CAPTAIN                ; $2e
	const SPRITE_FISHER2                   ; $2f
	const SPRITE_BLACKBELT                 ; $30
	const SPRITE_GUARD                     ; $31
	const SPRITE_COP_GUARD                 ; $32
	const SPRITE_MOM                       ; $33
	const SPRITE_BALDING_GUY               ; $34
	const SPRITE_YOUNG_BOY                 ; $35
	const SPRITE_GAMEBOY_KID               ; $36
	const SPRITE_GAMEBOY_KID_COPY          ; $37
	const SPRITE_CLEFAIRY                  ; $38
	const SPRITE_AGATHA                    ; $39
	const SPRITE_BRUNO                     ; $3a
	const SPRITE_LORELEI                   ; $3b
	const SPRITE_SEEL                      ; $3c
	const SPRITE_BILL                      ; $3d
	const SPRITE_BLAINE                    ; $3e
	const SPRITE_BROCK                     ; $3f
	const SPRITE_MISTY                     ; $40
	const SPRITE_LTSURGE                   ; $41
	const SPRITE_ERIKA                     ; $42
	const SPRITE_KOGA                      ; $43
	const SPRITE_SABRINA                   ; $44
	const SPRITE_GUITARIST                 ; $45
	const SPRITE_SWIMMER_F                 ; $46
	const SPRITE_SURFING_PIKACHU           ; $47
	const SPRITE_ROCKET_F                  ; $48
	const SPRITE_KIMONO_GIRL			   ; $49
	const SPRITE_CLERK                     ; $4a
	const SPRITE_PIKACHU                   ; $4b
	const SPRITE_JIGGLYPUFF                ; $4c
	const SPRITE_CHANSEY                   ; $4d
	const SPRITE_LAPRAS                    ; $4e
	const SPRITE_CELIO                     ; $4f
	const SPRITE_BALL                      ; $50
	const SPRITE_OMANYTE                   ; $51
	const SPRITE_BOULDER                   ; $52
	const SPRITE_PAPER_SHEET               ; $53
	const SPRITE_BOOK_MAP_DEX              ; $54
	const SPRITE_CLIPBOARD                 ; $55
	const SPRITE_SNORLAX                   ; $56
	const SPRITE_OLD_AMBER_COPY            ; $57
	const SPRITE_OLD_AMBER                 ; $58
	const SPRITE_LYING_OLD_MAN_UNUSED_1    ; $59
	const SPRITE_LYING_OLD_MAN_UNUSED_2    ; $5a
	const SPRITE_LYING_OLD_MAN             ; $5b
	const SPRITE_SLOWPOKE	               ; $5c
	const SPRITE_ROCK_SMASH                ; $5d
	const SPRITE_SNORLAX_BIG               ; $5e

; different kinds of people events
ITEM    EQU $80
TRAINER EQU $40

BOULDER_MOVEMENT_BYTE_2 EQU $10

; sprite facing directions
SPRITE_FACING_DOWN  EQU $00
SPRITE_FACING_UP    EQU $04
SPRITE_FACING_LEFT  EQU $08
SPRITE_FACING_RIGHT EQU $0C
