.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data
var1 WORD 100h
var2 WORD 500h

.code
main PROC
	xor eax,eax
	mov ax,var1 ; ax = 100
	xchg ax,var2 ; ax = var2
	mov var1,ax ;  var1 = 500

INVOKE ExitProcess,0
main ENDP
END main