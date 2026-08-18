[org 0x7c00]          ;Telling the assembler where the code will be loaded because the boot loader is supposed to be at addresss 7c00

mov ah, 0x0e         ; BIOS teletype output function
mov al, 'H'         
int 0x10      
mov al, 'e' 
int 0x10    
mov al, 'l'  
int 0x10     
mov al, 'l'    
int 0x10        
mov al, 'o'   
int 0x10      
mov al, ' '     
int 0x10          
mov al, 'w'        
int 0x10          
mov al, 'o'         
int 0x10          
mov al, 'r'        
int 0x10          
mov al, 'l'     
int 0x10        
mov al, 'd'       
int 0x10     

main:
    hlt


times 510-($-$$) db 0 ; Pad the rest of the 512 bytes with zeros
dw 0xaa55            ; Standard 2-byte boot signature
