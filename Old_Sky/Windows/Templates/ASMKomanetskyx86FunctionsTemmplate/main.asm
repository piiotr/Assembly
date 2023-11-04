.386
.model flat,stdcall
.stack 4096

%include functions32bitLibrary.inc

.data
	;Place your variables and memory allocations here
	welcomeMessage		db	"Hello World!", 00h
	pEndMessage			db	"Program ending, have a great day!", 00h
	unsignedPrint		db	"Unsigned Print: ", 00h
	signedPrint			db	"Signed Print: ", 00h
	hexPrint			db	"Hexidecimal Print: ", 00h
	octPrint			db	"Octal Print: ", 00h
	binPrint			db	"Binary Print: ", 00h
	binFullPrint		db	"Full Binary Print: ", 00h
	floatPrint			db	"Floating Point: ", 00h
	floatSPrint			db	"Negative Floating Point: ", 00h
	floatBinaryPrint	db	"Floating Point in Binary: ", 00h
	stringInput			db	"Please enter a string: ", 00h
	inputTotal			db	"Total characters input: ", 00h
	binInput			db	"Input a binary number: ", 00h
	invalidBin			db	"Invalid binary number entered....", 00h
	hexInput			db	"Input a Hexadecimal number: ", 00h
	invalidHex			db	"Invalid hexadecimal number entered....", 00h
	floatInput			db	"Input a floating point number: ", 00h
	invalidFloat		db	"Invalid floating point number entered....", 00h

	aDWFloat		dd	123.456789
	aDWSFloat		dd	-123.456789

	testFloat1		dd	123.45678
	testFloat2		dd	234.56789
	testFloat3		dd	345.67891
	testFloat4		dd	456.78912
	testFloat5		dd	567.89012
	testFloat6		dd	678.90123
	testFloat7		dd	789.01234
	testFloat8		dd	890.12345

	inputBuffer		db 255 DUP(?)
	saveEAX			dd	?


.code
main PROC
	nop

	;Place your program code here
	push	OFFSET welcomeMessage
	call	PrintString
	call	Printendl

	push	OFFSET unsignedPrint
	call	PrintString
	mov		eax, 123
	push	eax
	call	Print32bitNumDecimal
	call	Printendl

	push	OFFSET signedPrint
	call	PrintString
	mov		eax, -123
	push	eax
	call	Print32bitSNumDecimal
	call	Printendl

	push	OFFSET binFullPrint
	call	PrintString
	mov		eax, 123
	push	eax
	call	Print32bitFullBinary
	call	Printendl

	push	OFFSET binPrint
	call	PrintString
	mov		eax, 123
	push	eax
	call	Print32bitNumBinary
	call	Printendl

	push	OFFSET hexPrint
	call	PrintString
	mov		eax, 123
	push	eax
	call	Print32bitNumHex
	call	Printendl

	push	OFFSET octPrint
	call	PrintString
	mov		eax, 123
	push	eax
	call	Print32bitNumOct
	call	Printendl

	push	OFFSET floatPrint
	call	PrintString
	mov		eax, [aDWFloat]
	push	eax
	mov		eax, 2
	push	eax
	call	PrintDWFloat
	call	Printendl

	push	OFFSET floatPrint
	call	PrintString
	mov		eax, [aDWFloat]
	push	eax
	mov		eax, 4
	push	eax
	call	PrintDWFloat
	call	Printendl

	push	OFFSET floatSPrint
	call	PrintString
	mov		eax, [aDWSFloat]
	push	eax
	mov		eax, 4
	push	eax
	call	PrintDWFloat
	call	Printendl

	push	OFFSET floatSPrint
	call	PrintString
	mov		eax, [aDWSFloat]
	push	eax
	mov		eax, 4
	push	eax
	call	PrintDWFloatSN
	call	Printendl

	push	OFFSET floatBinaryPrint
	call	PrintString
	mov		eax, [aDWFloat]
	push	eax
	call	Print32bitFloatBinary
	call	Printendl
	call	Printendl

	finit
	fld		testFloat1
	fld		testFloat2
	fld		testFloat3
	fld		testFloat4
	fld		testFloat5
	fld		testFloat6
	fld		testFloat7
	fld		testFloat8
	call	PrintFloatingRegisters
	call	Printendl

	nop
	push	OFFSET stringInput
	call	PrintString
	mov		eax, OFFSET inputBuffer
	push	eax
	mov		eax, LENGTHOF inputBuffer
	push	eax
	call	ReadText

	sub		eax, 2
	mov		[saveEAX], eax
	push	OFFSET inputTotal
	call	PrintString
	mov		eax, [saveEAX]
	push	eax
	call	Print32bitNumDecimal
	call	Printendl

	push	OFFSET inputBuffer
	mov		eax, [saveEAX]
	push	eax
	call	PrintText
	call	Printendl

	push	OFFSET stringInput
	mov		eax, OFFSET inputBuffer
	push	eax
	mov		eax, LENGTHOF inputBuffer
	push	eax
	call	ReadTextWPrompt

	sub		eax, 2
	mov		[saveEAX], eax
	push	OFFSET inputTotal
	call	PrintString
	mov		eax, [saveEAX]
	push	eax
	call	Print32bitNumDecimal
	call	Printendl

	push	OFFSET inputBuffer
	mov		eax, [saveEAX]
	push	eax
	call	PrintText
	call	Printendl

	BinInputLoop:
		push	OFFSET binInput
		call	PrintString
		call	InputBin
		jnc		NoBinError
		push	OFFSET invalidBin
		call	PrintSTring
		call	Printendl
	jmp	BinInputLoop
	NoBinError:
		push	eax
		call	Print32bitNumBinary
		call	Printendl

	HexInputLoop:
		push	OFFSET hexInput
		call	PrintString
		call	InputHex
		jnc		NoHexError
		push	OFFSET invalidHex
		call	PrintString
		call	Printendl
	jmp HexInputLoop
	NoHexError:
		push	eax
		call	Print32bitNumHex
		call	Printendl

	FloatInputLoop:
		push	OFFSET floatInput
		call	PrintString
		call	InputFloat
		jnc		NoFloatError
		push	OFFSET	invalidFloat
		call	PrintString
		call	Printendl
	jmp FloatInputLoop
	NoFloatError:
		push	eax
		mov		eax, 4
		push	eax
		call	PrintDWFloat
		call	Printendl

	push	OFFSET pEndMessage
	call	PrintString
	call	Printendl

	nop
	INVOKE ExitProcess,0
main ENDP
END main