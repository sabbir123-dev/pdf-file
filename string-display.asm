.model small
.stack 100h
.data
msg db 'Enter your name:$'
msg1 db 10,13,'Your name is : $'
buffer db 50
db ?
db 50 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,msg
    int 21h
    
    
    mov ah,0Ah
    lea dx,buffer
    int 21h
    
    
    mov ah,09h
    lea dx,msg1
    int 21h 
    
    lea dx,buffer+2
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main
