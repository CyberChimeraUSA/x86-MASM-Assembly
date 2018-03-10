.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

var1 LABEL WORD
var2 DWORD 12345678h

.code
main PROC

xor eax, eax
xor edx,edx
mov ax,var1      ;ax and var1 are same size
                 ;first half of var2 goes into var1

mov dx,[var1+2] ;dx and var1 are same size
                ;second half of var2 goes into [var1 + 2]





INVOKE ExitProcess,0
main ENDP
END main