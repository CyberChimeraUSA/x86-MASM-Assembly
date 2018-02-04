.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data


.code
main PROC
xor eax,eax
mov eax,0FFFFFFFFh
add eax,1            ;carry flag

xor eax,eax
mov al,-128
sub al,1             ;overflow flag

INVOKE ExitProcess,0
main ENDP
END main