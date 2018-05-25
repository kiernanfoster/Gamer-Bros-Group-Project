include\masm32\include\masm32rt.inc


.data
MessageText db "Please read the following 2 numbers and add them we will then tell you whether the answer was correct or not: 25 and 203", 0
CaptionText db "Hello, and welcome to our math program", 0
var1	DWORD 25
var2	DWORD 203
sum1	DWORD 228
.data?
answer1 DWORD ?
.code
start:
main proc

invoke MessageBox, 0, ADDR MessageText, ADDR CaptionText, MB_OK
;---------------------------------------------------------------------------------------------- -
invoke StdIn, addr answer1, 100
mov eax,answer1
mov sum1, eax
cmp eax, 228
je corectchoice

corectchoice:
print "That was correct goodjob!"
inkey
INVOKE ExitProcess, 0

mov eax,answer1
mov sum1, eax
cmp eax, 228
jne badchoice
badchoice:
print "Incorrect but good attempt!"
inkey
INVOKE ExitProcess,0
main ENDP
END start
