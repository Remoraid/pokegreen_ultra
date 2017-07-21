AnimatePartyMon_ForceSpeed1:
	xor a
	ld [wCurrentMenuItem], a
	ld b, a
	inc a
	jr GetAnimationSpeed

; wPartyMenuHPBarColors contains the party mon's health bar colors
; 0: green
; 1: yellow
; 2: red
AnimatePartyMon:
	ld hl, wPartyMenuHPBarColors
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]

GetAnimationSpeed:
	ld c, a
	ld hl, PartyMonSpeeds
	add hl, bc
	ld a, [wOnSGB]
	xor $1
	add [hl]
	ld c, a
	add a
	ld b, a
	ld a, [wAnimCounter]
	and a
	jr z, .resetSprites
	cp c
	jr z, .animateSprite
.incTimer
	inc a
	cp b
	jr nz, .skipResetTimer
	xor a ; reset timer
.skipResetTimer
	ld [wAnimCounter], a
	jp DelayFrame
.resetSprites
	push bc
	ld hl, wMonPartySpritesSavedOAM
	ld de, wOAMBuffer
	ld bc, $60
	call CopyData
	pop bc
	xor a
	jr .incTimer
.animateSprite
	push bc
	ld hl, wOAMBuffer + $02 ; OAM tile id
	ld bc, $10
	ld a, [wCurrentMenuItem]
	call AddNTimes
	ld c, $4 ;amount to increase the tile id by
	ld b, $4
	ld de, $4
.loop
	ld a, [hl]
	add c
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	pop bc
	ld a, c
	jr .incTimer

; Party mon animations cycle between 2 frames.
; The members of the PartyMonSpeeds array specify the number of V-blanks
; that each frame lasts for green HP, yellow HP, and red HP in order.
; On the naming screen, the yellow HP speed is always used.
PartyMonSpeeds:
	db 5, 16, 32

LoadAnimSpriteGfx:
; Load animated sprite tile patterns into VRAM during V-blank. hl is the address
; of an array of structures that contain arguments for CopyVideoData and a is
; the number of structures in the array.
	ld bc, $0
.loop
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyVideoData
	pop hl
	pop bc
	ld a, $6
	add c
	ld c, a
	pop af
	dec a
	jr nz, .loop
	ret

Trade_LoadMonIconGFX: ; kind of a hacky function, but it works!
	ld a, [wTradedPlayerMonSpecies]
	ld [wTradeMonIcons], a
	ld a, [wTradedEnemyMonSpecies]
	ld [wTradeMonIcons + $01], a
	ld a, $FF ;list terminator
	ld [wTradeMonIcons + $02], a
	call LoadTradeMonSprites
	ret	
	
LoadTradeMonSprites:
	ld de, vSprites
	ld hl, wTradeMonIcons
.loop
	ld a, [hli]
	cp $ff
	jr z, .done
	push hl
	call LoadPartyMonSprite
	pop hl
	jr .loop
.done
	jp EnableLCD
	
LoadNicknameMonSprite:
	call DisableLCD
	xor a
	ld [H_DOWNARROWBLINKCNT2], a
	ld a, [wMonPartySpriteSpecies]
	ld de, vNPCSprites
	call LoadPartyMonSprite
	call EnableLCD
	ld a, [H_SPRITEINDEX]
	push af
	xor a
	ld [H_SPRITEINDEX], a
	call PlacePartyMonSprite
	pop af
	ld [H_SPRITEINDEX], a
	ret	
	
LoadPartyMonSprites:
	ld de, vSprites
	ld hl, wPartySpecies
.loop
	ld a, [hli]
	cp $ff
	jr z, .done
	push hl
	call LoadPartyMonSprite
	pop hl
	jr .loop
.done
	jp EnableLCD

LoadPartyMonSprite:
	push de ;get vSprites out of the way for a sec
	call ReadMonMenuIcon ;get the mon Icon number in to A
	ld l, a
	ld h, 0 ;hl now contains mon Icon number
	add hl, hl ;add hl in to itself
	ld de, IconPointers
	add hl, de ;basically gets the position in the pointer table based on the icon number we originally loaded in to HL
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, BANK(Icons) ;Crystal originally loaded to B, but I changed to A for FarCopyData
	ld h, d ;for FarCopyData
	ld l, e	;for FarCopyData
	pop de ;get vSprites back in to DE
	ld bc, $0080 ;load this in to BC
	jp FarCopyData ;send the data! SO this means, copy BC ($0080) bytes from a:hl (BANK Icons: position HL)

PlacePartyMonSprite:
	push hl
	push de
	push bc
	ld a, [H_SPRITEINDEX] ;xor'd a (zero)
	add a
	add a
	add a
	add a
	ld hl, wOAMBuffer ;load OAMBuffer in to hl
	ld c, a ;ld in to c, a (result of all those adds) (zero?)
	ld b, 0 ;ld in to b, 0  so BC is now 00XX, XX being value of "a" (0000?)
	add hl, bc ;add BC to get place in OAMBuffer
	ld a, h
	ld d, a 
	ld a, l
	ld e, a
	ld hl, PartyMonOAM
	add hl, bc
	ld bc, $10
	call CopyData
	ld hl, wOAMBuffer
	ld de, wMonPartySpritesSavedOAM
	ld bc, $60
	call CopyData
	pop bc
	pop de
	pop hl
	ret

PartyMonOAM:
	db $10,$10,$00,$00
	db $10,$18,$01,$00
	db $18,$10,$02,$00
	db $18,$18,$03,$00

	db $20,$10,$08,$00
	db $20,$18,$09,$00
	db $28,$10,$0a,$00
	db $28,$18,$0b,$00

	db $30,$10,$10,$00
	db $30,$18,$11,$00
	db $38,$10,$12,$00
	db $38,$18,$13,$00

	db $40,$10,$18,$00
	db $40,$18,$19,$00
	db $48,$10,$1a,$00
	db $48,$18,$1b,$00

	db $50,$10,$20,$00
	db $50,$18,$21,$00
	db $58,$10,$22,$00
	db $58,$18,$23,$00

	db $60,$10,$28,$00
	db $60,$18,$29,$00
	db $68,$10,$2a,$00
	db $68,$18,$2b,$00
	
WriteTradeMonOAM:
; Write OAM blocks for the party sprite of the value in
; [wMonPartySpriteSpecies], which now holds a hardcoded tile number.
	xor a
	ld [hPartyMonIndex], a
	ld a, [wMonPartySpriteSpecies]
	ld [wOAMBaseTile], a
	jr WriteTradeMonIconOAM
	
WriteTradeMonIconOAM:
; Write the OAM blocks for the first animation frame into the OAM buffer and
; make a copy at wMonPartySpritesSavedOAM.
	push af
	ld c, $10
	ld h, wOAMBuffer / $100
	ld a, [hPartyMonIndex]
	swap a
	ld l, a
	add $10
	ld b, a
	pop af
	call WriteAsymmetricMonPartySpriteOAM
	jr .makeCopy
.makeCopy
	ld hl, wOAMBuffer
	ld de, wMonPartySpritesSavedOAM
	ld bc, $60
	jp CopyData
	
INCLUDE "engine/menu/mon_icons.asm"