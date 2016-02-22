; У клавиатуры занулить крайний справа вход
; и использовать верхний ряд как выходы.
; Выходы клавиатуры подключить к старшей тетраде p1.
; Пульт подключить к младшей тетраде p5 (черный справа)
; Проверить заземление пульта.
; Управление: вверх - вниз - вправо - влево

	org 8100h
n_ev:	equ 30h
command:	equ 31h
busy:	equ 32h
hi_lo:	equ 7fh

main:	mov command,#0
	mov a,tmod
	anl a,#F0h
	orl a,#1
	mov tmod,a
	setb et0
	setb ea
cycle:	lcall 128h
	mov a,command
	jz cycle
	mov command,#0
	lcall exec
	clr a
	movc a,@a+dptr
	mov n_ev,a
	setb tr0
	sjmp cycle
	ret

exec:	mov busy,#255	
	mov dptr,#jmptbl
	mov b,#3
	dec a
	mul ab
	jmp @a+dptr
jmptbl:	ljmp right1		;1
	ljmp left1		;2
	ljmp forw1		;3
	ljmp back1	;4
	ljmp right2		;5
	ljmp left2		;6
	ljmp forw2		;7
	ljmp back2	;8
	ljmp rightgo1	;9
	ljmp bigrgo1	;10
	ljmp leftgo1	;11
	ljmp biglgo1	;12
	ljmp forw1		; not needed. CMD reconfig expected
	ljmp bigforw1	;14
	ljmp back1	; not needed. CMD reconfig expected
	ljmp bigback1	;16
	ljmp rightgo2	;17
	ljmp bigrgo2	;18
	ljmp leftgo2	;19
	ljmp biglgo2	;20
	ljmp forw2		; not needed. CMD reconfig expected
	ljmp bigforw2	;22
	ljmp back2	; not needed. CMD reconfig expected
	ljmp bigback2	;24
	ljmp turn180R1	;25
	ljmp turn90L1	;26
	ljmp turn45L1	;27
	ljmp turn90R1	;28
	ljmp turn45R1	;29
	ljmp turn180R2  ;30
	ljmp turn90L2	;31
	ljmp turn45L2	;32
	ljmp turn90R2	;33
	ljmp turn45R2	;34
	ret
turn180R1:
	mov dptr,#turn180data
	clr hi_lo
	ret
turn180R2:
	mov dptr, #turn180data
	setb hi_lo
	ret
turn90L1:
	mov dptr,#turn90Ldata
	clr hi_lo
	ret
turn45L1:
	mov dptr,#turn45Ldata
	clr hi_lo
	ret
turn90R1:
	mov dptr,#turn90Rdata
	clr hi_lo
	ret
turn45R1:
	mov dptr,#turn45Rdata
	clr hi_lo
	ret
turn90L2:
	mov dptr,#turn90Ldata
	setb hi_lo
	ret
turn45L2:
	mov dptr,#turn45Ldata
	setb hi_lo
	ret
turn90R2:
	mov dptr,#turn90Rdata
	setb hi_lo
	ret
turn45R2:
	mov dptr,#turn45Rdata
	setb hi_lo
	ret
right1:	mov dptr,#right_tbl
	clr hi_lo
	ret
left1:	mov dptr,#left_tbl
	clr hi_lo
	ret
forw1:	mov dptr,#forw_tbl
	clr hi_lo
	ret
back1:	mov dptr,#back_tbl
	clr hi_lo
	ret
rightgo1:	mov dptr,#rightgo_tbl
	clr hi_lo
	ret
bigrgo1:	mov dptr,#bigrgo_tbl
	clr hi_lo
	ret
leftgo1:	mov dptr,#leftgo_tbl
	clr hi_lo
	ret
biglgo1:	mov dptr,#biglgo_tbl
	clr hi_lo
	ret
bigforw1:	mov dptr,#bigforw_tbl
	clr hi_lo
	ret
bigback1:	mov dptr,#bigback_tbl
	clr hi_lo
	ret

right2:	mov dptr,#right_tbl
	setb hi_lo
	ret
left2:	mov dptr,#left_tbl
	setb hi_lo
	ret
forw2:	mov dptr,#forw_tbl
	setb hi_lo
	ret
back2:	mov dptr,#back_tbl
	setb hi_lo
	ret
rightgo2:	mov dptr,#rightgo_tbl
	setb hi_lo
	ret
bigrgo2:	mov dptr,#bigrgo_tbl
	setb hi_lo
	ret
leftgo2:	mov dptr,#leftgo_tbl
	setb hi_lo
	ret
biglgo2:	mov dptr,#biglgo_tbl
	setb hi_lo
	ret
bigforw2:	mov dptr,#bigforw_tbl
	setb hi_lo
	ret
bigback2:	mov dptr,#bigback_tbl
	setb hi_lo
	ret


wait:	mov dptr,#wait_tbl
	ret


t0_int:	mov th0,#d8h	;3ch
	mov tl0,#f0h	;b0h
	push a
	push psw
	mov a,n_ev
	movc a,@a+dptr
	jnb hi_lo,$t0_ok
	swap a
$t0_ok:	mov f8h,a	
	djnz n_ev,$ok
	clr tr0
	mov busy,#0
$ok:	pop a
	pop psw
	reti

right_tbl:	db 10
	db 11111111b
	db 11111111b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b

left_tbl:	db 10
	db 11111111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11111110b
	db 11111110b

forw_tbl:	db 10
	db 11111111b
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b

back_tbl:	db 10
	db 11111111b
	db 11111111b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b

rightgo_tbl:
	db 20
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b

leftgo_tbl:	
	db 20
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11111110b
	db 11111110b

bigforw_tbl:	
	db 25
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111100b

bigback_tbl:	
	db 25
	db 11111111b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111111b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111101b
	db 11111100b

bigrgo_tbl:
	db 30
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b

biglgo_tbl:	
	db 30
	db 11111111b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11111110b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11111110b
	db 11111110b
turn180data:
	db 17
	db 11111111b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b
turn90Rdata:
	db 13
	db 11111111b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b
turn45Rdata:
	db 8
	db 11111111b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111011b
	db 11111110b
	db 11111110b
turn90Ldata:
	db 15
	db 11111111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11111110b
	db 11111110b
turn45Ldata:
	db 10
	db 11111111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11110111b
	db 11111110b
	db 11111110b

wait_tbl:	db 30
	blkb 30,FFh

	org 800bh
	ljmp t0_int