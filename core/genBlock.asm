generate_block:

    call procedure_delay                   ; Generamos un numero aleatorio

    mov  bl,0x6                            ; entre [0,5] este sera el color
    call procedure_generate_random_number  ; de una de las secciones de una
                                           ; pieza
    inc al                                 ; Aumentamos su valor en 1 para
    mov  [block_color_1],al                ; que no salga el "color" negro

    call procedure_delay
    mov  bl,0x6
    call procedure_generate_random_number

    inc al
    mov [block_color_2],al

    call procedure_delay
    mov  bl,0x6
    call procedure_generate_random_number

    inc al
    mov [block_color_3],al

    ret

use_block:
    push ax

    ; Movemos los colores guardados
    ; y los asignamos al bloque actual

    mov al, byte [block_color_1]
    mov byte [cblock_color_1], al

    mov al, byte [block_color_2]
    mov byte [cblock_color_2], al

    mov al, byte [block_color_3]
    mov byte [cblock_color_3], al

    pop ax
    ret

new_block:
    mov al,18            ; Asignamos la posicion
    mov [block_x],al     ; inicial del bloque
    mov [oblock_x],al

    mov al,8
    mov [block_y],al
    mov [oblock_y],al


    ret
