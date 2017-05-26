[bits 16]
org  0x100

segment .text
    global main

%include "main.asm"

%include "core/move.asm"
%include "core/frame.asm"
%include "core/random.asm"
%include "core/gravity.asm"
%include "core/draw_ui.asm"
%include "core/start_g.asm"
%include "core/g_block.asm"
%include "core/game_lo.asm"
%include "core/draw_bl.asm"
%include "core/check_k.asm"

quit:
    mov  ah,00h      ; Terminamos la
    int  21h         ; aplicacion

segment .data
    delay_stopping_point_centiseconds db 0  ; Variables necesarias para
    delay_initial                     db 0  ; el generador de numeros
    random_number                     db 0  ; aleatorios.
    delay_centiseconds                db 5  ;

    frame_count db 0
    frame_gravi db 0

    speed db 0

    block_color_1 db 0  ; Estos seran los colores
    block_color_2 db 0  ; que componen a un bloque
    block_color_3 db 0  ; de tres secciones.

    cblock_color_1 db 0  ; Estos seran los colores
    cblock_color_2 db 0  ; que componen al actual
    cblock_color_3 db 0  ; bloque.

    block_x db 0  ; Posicion de la cabeza
    block_y db 0  ; del bloque actual

    oblock_x db 0  ; Posicion anterior de
    oblock_y db 0  ; la cabeza del bloque actual

    exist_block db 0 ; Para saber si se esta controlando un bloque
