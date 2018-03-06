.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data

byte1 BYTE 10,20,30
array1 WORD 30 DUP(?)
array2 WORD 10 DUP(2 DUP(?))
array3 DWORD 1,2,3,4,5,6,7

.code
main PROC

xor eax,eax
mov eax,LENGTHOF byte1
mov eax,LENGTHOF array1
mov eax,LENGTHOF array2
mov eax,LENGTHOF array3


INVOKE ExitProcess,0
main ENDP
END main