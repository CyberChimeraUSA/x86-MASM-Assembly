.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD
.data
arrayByte BYTE 10h,20h,30h
arrayWord WORD 100h,200h,300h


.code
main PROC

	xor eax,eax
	mov al,arrayByte     ; al = 0x10
	mov al,[arrayByte+1] ; al = 0x20
	mov al,[arrayByte+2] ; al = 0x30

	xor eax,eax
	mov ax,arrayWord     ; ax = 0x100
	mov ax,[arrayWord+2] ; ax = 0x200
	mov ax,[arrayWord+4] ; ax = 0x300
INVOKE ExitProcess,0
main ENDP
END main