.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

var1 WORD 10h

.code
main PROC

xor eax,eax
xor ebx,ebx
mov esi,OFFSET var1
mov eax,[esi]
mov ebx,esi

INVOKE ExitProcess,0
main ENDP
END main