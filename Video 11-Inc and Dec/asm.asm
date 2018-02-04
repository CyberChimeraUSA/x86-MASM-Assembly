.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

var1 DWORD 10h

.code
main PROC
xor eax,eax
inc var1
mov eax,var1
dec eax


INVOKE ExitProcess,0
main ENDP
END main