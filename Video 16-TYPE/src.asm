.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

var1 BYTE ?
var2 WORD ?
var3 DWORD ?
var4 QWORD ?



.code
main PROC

xor eax,eax
mov eax,TYPE var1
mov eax,TYPE var2
mov eax,TYPE var3
mov eax,TYPE var4

INVOKE ExitProcess,0
main ENDP
END main