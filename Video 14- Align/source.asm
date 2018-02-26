.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

var1 BYTE 0
ALIGN 2
var2 BYTE 0
ALIGN 2
var3 BYTE 0
ALIGN 4
var4 BYTE 0
ALIGN 4
var5 BYTE 0
.code
main PROC

xor eax,eax
mov eax,OFFSET var1
mov eax,OFFSET var2
mov eax,OFFSET var3
mov eax,OFFSET var4
mov eax,OFFSET var5

INVOKE ExitProcess,0
main ENDP
END main