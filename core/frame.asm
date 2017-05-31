next_frame:

    call procedure_delay  ; Efectuamos un retardo

    mov al,[frame_count]  ; Obtenemos el contador de frames
    inc al                ; Lo aumentamos en 1
    mov [frame_count],al  ; actualizamos el contador

    ret

normalize:
    ; Se resetean los valores para
    ; la gravedad
    
    xor al,al
    mov [frame_count],al
    mov [frame_gravi],al

    ret
