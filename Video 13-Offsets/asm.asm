.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data
  myArray DWORD 1,2,3

.code
main PROC
xor eax,eax                 ;clear eax
xor ebx,ebx                 ;clear ebx 
mov esi,OFFSET myArray      ;move Offset esi (in this myArray start)    
mov esi,OFFSET myArray + 4  ;move up myArray 4 bytes

mov eax, myArray + 4        ;move value of myArray+4 bytes into eax 
mov ebx, OFFSET myArray + 4 ;move address of myArray+4 bytes into ebx


INVOKE ExitProcess,0
main ENDP
END main