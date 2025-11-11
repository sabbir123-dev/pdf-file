.model small
.stack 100h
.code
main proc
    
    mov ah, 1
    int 21h
    mov bl, al     
    
   
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    ; Display ASCII code - FIXED VERSION
    mov al, bl      ; Character in AL
    mov ah, 0       ; Clear AH
    mov cl, 10      ; Divisor
    div cl          ; AL = quotient, AH = remainder
    
    ; Save remainder
    mov ch, ah
    
    ; Display tens digit
    mov dl, al
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h
    
    ; Display units digit
    mov dl, ch
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h
    
exit:
    mov ah, 4ch
    int 21h
main endp
end main