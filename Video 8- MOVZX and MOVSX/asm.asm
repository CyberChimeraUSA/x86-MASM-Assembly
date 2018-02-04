.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

.code
main PROC
;movzx example
	mov eax,0FFFFFFFFh   ;fills eax with all F
	mov ebx,0FFFFFFFFh   ;fills ebx with all F
	mov ecx,0FFFFFFFFh   ;fills ecx with all F
	mov bx,1234h         ;moves 0x1234 to bx
	movzx eax,bx         ;moves 0x00001234 to eax
	movzx edx,bx         ;moves 0x00001234 to edx

;movsx example
	mov eax,011111111h   ;fills eax with all 1
	mov ebx,011111111h   ;fills eax with all 1
	mov ecx,011111111h   ;fills eax with all 1
	mov bx,0ABABh        ;moves 0xABAB
	movsx eax,bx         ;moves 0xFFFFABAB to eax
	movsx edx,bx         ;moves 0xFFFFABAB to edx


INVOKE ExitProcess,0
main ENDP
END main