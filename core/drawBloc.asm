draw_block:
    mov byte [exist_block],1

    ; Borramos la posicion anterior
    mov ah,02h
    mov dh,[oblock_y]
    mov dl,[oblock_x]
    mov cx,1
    xor bl,bl
    int 10h

    mov ah,09h
    mov al,0
    int 10h

    mov ah,02h
    mov dl,[oblock_x]
    dec dh
    int 10h

    mov ah,09h
    mov al,0
    int 10h

    mov ah,02h
    mov dl,[oblock_x]
    dec dh
    int 10h

    mov ah,09h
    mov al,0
    int 10h


    ; Dibujamos la nueva posicion
    mov ah,02h
    mov dh,[block_y]
    mov dl,[block_x]
    int 10h

    mov ah,09h
    mov al,0xB2
    mov bl,[cblock_color_1]
    mov cx,1
    int 10h

    mov ah,02h
    dec dh
    int 10h

    mov ah,09h
    mov al,0xB2
    mov bl,[cblock_color_2]
    mov cx,1
    int 10h

    mov ah,02h
    dec dh
    int 10h

    mov ah,09h
    mov al,0xB2
    mov bl,[cblock_color_3]
    mov cx,1
    int 10h

    ; Ajustamos las posiciones cartecianas
    mov al,[block_x]
    mov [oblock_x],al

    mov al,[block_y]
    mov [oblock_y],al

    ret

draw_next:
    ; Dibujamos el spoiler
    ; del siguiente bloque
    ; que sera generado

    mov ah,02h
    xor bh,bh
    mov dh,8
    mov dl,25
    int 10h

    mov ah,09h
    mov al,0xB2
    mov bl,[block_color_3]
    mov cx,1
    int 10h

    mov ah,02h
    inc dh
    int 10h

    mov ah,09h
    mov bl,[block_color_2]
    int 10h

    mov ah,02h
    inc dh
    int 10h

    mov ah,09h
    mov bl,[block_color_1]
    int 10h

    ret
