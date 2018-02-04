.386 ;32-bit program
.model flat,stdcall ;flat memory model,stdcall calling convention
.stack 4096 ;run-time stack
ExitProcess PROTO, dwExitCode:DWORD ;prototype ExitProcess declaration

.data
sum DWORD 0 ; create a sum variable initalized to 0
val1 DWORD 9h
val2 DWORD 3h

.code
main PROC
   xor eax,eax ;clear eax 
   mov eax,val1 
   add eax,val2 
   mov sum,eax 
 
   

   INVOKE ExitProcess,0
main ENDP
END main ;Last line to be assembled