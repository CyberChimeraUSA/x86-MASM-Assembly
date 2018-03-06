.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

varDouble DWORD 12345678h
.code
main PROC

xor eax,eax
xor ebx,ebx
mov ax,WORD PTR varDouble
mov bx,WORD PTR [varDouble+2]
INVOKE ExitProcess,0
main ENDP
END main