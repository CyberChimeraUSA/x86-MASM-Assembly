
.386 ;32-bit program
.model flat,stdcall ;flat memory model,stdcall calling convention
.stack 4096 ;run-time stack
ExitProcess PROTO, dwExitCode:DWORD ;prototype ExitProcess declaration

.data
byte_var BYTE 0
var1 DWORD 6
var2 DWORD 5
sum DWORD 0

.code
main PROC
   xor eax,eax       ;clear eax
   lahf              ;copies low byte of EFLAGS into ah
   mov byte_var,ah   ;save flags to byte_var
   mov eax,var1      ;dummy code
   mov ebx,var2      ;dummy code
   add eax,ebx       ;dummy code
   mov sum,eax       ;dummy code that changes EFLAGS register
   xor eax,eax       ;clear eax
   mov ah,byte_var   ;move status flags back to ah
   sahf              ;save previous status flags in register

   INVOKE ExitProcess,0
main ENDP
END main ;Last line to be assembled