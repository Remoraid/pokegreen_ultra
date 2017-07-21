SHINY_ATK_BIT EQU 5
SHINY_DEF_VAL EQU 10
SHINY_SPD_VAL EQU 10
SHINY_SPC_VAL EQU 10

CheckShininess:
; Check if a mon is shiny by DVs at bc.
; Return carry if shiny.

	ld l, c
	ld h, b

; Attack
	ld a, [hl]
	and 1 << SHINY_ATK_BIT
	jr z, .NotShiny

; Defense
	ld a, [hli]
	and $f
	cp  SHINY_DEF_VAL
	jr nz, .NotShiny

; Speed
	ld a, [hl]
	and $f0
	cp  SHINY_SPD_VAL << 4
	jr nz, .NotShiny

; Special
	ld a, [hl]
	and $f
	cp  SHINY_SPC_VAL
	jr nz, .NotShiny

.Shiny:
	scf
	ret

.NotShiny:
	and a
	ret
	
GetBattlemonBackpicPalettePointer: ;741
	push de
	callba GetPartyMonDVs
	ld c, l
	ld b, h
	ld a, [wBattleMonSpecies]
	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]
	call GetPlayerOrMonPalettePointer
	pop de
	ret

GetEnemyFrontpicPalettePointer: ;751
	push de
	callba GetEnemyMonDVs
	ld c, l
	ld b, h
	ld a, [wEnemyMonSpecies2]
	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]
	call GetFrontpicPalettePointer
	pop de
	ret	
	
GetPlayerOrMonPalettePointer: ;761
	and a
	jp nz, GetMonNormalOrShinyPalettePointer
	ld hl, PlayerPalette
	ret
	
GetFrontpicPalettePointer: ;777
	and a
	jp nz, GetMonNormalOrShinyPalettePointer
	ld a, [wTrainerClass]
	
GetTrainerPalettePointer: ;782
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, TrainerPalettes
	add hl, bc
	ret

GetMonPalettePointer_: ;791
	call GetMonPalettePointer
	ret	
	
GetMonPalettePointer: ;868
	ld l, a
	ld h, $0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettes
	add hl, bc
	ret	
	
GetMonNormalOrShinyPalettePointer: ;878
	push bc
	call GetMonPalettePointer
	pop bc
	push hl
	call CheckShininess
	pop hl
	ret nc
rept 4
	inc hl
endr
	ret
	
GetPartyMonDVs: ; 3da85
	ld hl, wBattleMonDVs
	ld a, [wPlayerBattleStatus3]
	bit Transformed, a
	ret z
	ld hl, wPartyMon1DVs
	ld a, [wPlayerMonNumber]
	jp GetPartyLocation
	
GetEnemyMonDVs: ; 3da97
	ld hl, wEnemyMonDVs
	ld a, [wEnemyBattleStatus3]
	bit Transformed, a
	ret z
	ld hl, wTransformedEnemyMonOriginalDVs
	ld a, [wIsInBattle]
	dec a
	ret z
	ld hl, wEnemyMon1DVs
	ld a, [wEnemyMonPartyPos]
	jp GetPartyLocation
	
GetPartyLocation:: ; 3927
; Add the length of a PartyMon struct to hl a times.
	ld bc, PARTYMON_STRUCT_LENGTH
	jp AddNTimes
; 392d