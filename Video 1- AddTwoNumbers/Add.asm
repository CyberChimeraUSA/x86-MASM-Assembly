
.386 ;32-bit program
.model flat,stdcall ;flat memory model,stdcall calling convention
.stack 4096 ;run-time stack
ExitProcess PROTO, dwExitCode:DWORD ;prototype ExitProcess declaration

.code
main PROC
   mov eax,1 ; move 1 to the eax register
   add eax,2 ; add 2 to the eax register

   INVOKE ExitProcess,0
main ENDP
END main ;Last line to be assembled