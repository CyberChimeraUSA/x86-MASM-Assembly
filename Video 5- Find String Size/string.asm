.386                                       ;32-bit program
.model flat,stdcall                        ;flat memory model,stdcall calling convention
.stack 4096                                ;run-time stack
ExitProcess PROTO, dwExitCode:DWORD        ;prototype ExitProcess declaration

.data
string1 BYTE "Hello World"
StringSize = ($ - string1)                   ;$ is the current location counter, finding differential finds size

.code
main PROC
   xor eax,eax ;clear eax 
   mov eax,StringSize ;moves StringSize to eax


   INVOKE ExitProcess,0
main ENDP
END main									;Last line to be assembled