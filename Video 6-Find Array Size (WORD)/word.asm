.386                                       ;32-bit program
.model flat,stdcall                        ;flat memory model,stdcall calling convention
.stack 4096                                ;run-time stack
ExitProcess PROTO, dwExitCode:DWORD        ;prototype ExitProcess declaration

.data
array1 WORD 1000h,2000h,3000h,4000h,5000h
ArraySize = ($ - array1)/2                   ;$ is the current location counter, finding differential finds size

.code
main PROC
   xor eax,eax ;clear eax 
   mov eax,ArraySize ;moves ArraySize to eax


   INVOKE ExitProcess,0
main ENDP
END main									;Last line to be assembled