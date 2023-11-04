%include functions64bitLibrary.inc

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

	aDWFloat		dq	123.456789
	aDWSFloat		dq	-123.456789

	testFloat1		dq	123.45678
	testFloat2		dq	234.56789
	testFloat3		dq	345.67891
	testFloat4		dq	456.78912
	testFloat5		dq	567.89012
	testFloat6		dq	678.90123
	testFloat7		dq	789.01234
	testFloat8		dq	890.12345

	inputBuffer		db 255 DUP(?)
	saveRAX			dq	?


.code
main PROC
	nop

	;Place your program code here
	mov		rsi, OFFSET welcomeMessage
	push	rsi
	call	PrintString
	call	Printendl

	mov		rsi, OFFSET unsignedPrint
	push	rsi
	call	PrintString
	mov		rax, 123
	push	rax
	call	Print64bitNumDecimal
	call	Printendl

	mov		rsi, OFFSET signedPrint
	push	rsi
	call	PrintString
	mov		rax, -123
	push	rax
	call	Print64bitSNumDecimal
	call	Printendl

	mov		rsi, OFFSET binFullPrint
	push	rsi
	call	PrintString
	mov		rax, 123
	push	rax
	call	Print64bitFullBinary
	call	Printendl

	mov		rsi, OFFSET binPrint
	push	rsi
	call	PrintString
	mov		rax, 123
	push	rax
	call	Print64bitNumBinary
	call	Printendl

	mov		rsi, OFFSET hexPrint
	push	rsi
	call	PrintString
	mov		rax, 123
	push	rax
	call	Print64bitNumHex
	call	Printendl

	mov		rsi, OFFSET octPrint
	push	rsi
	call	PrintString
	mov		rax, 123
	push	rax
	call	Print64bitNumOct
	call	Printendl

	mov		rsi, OFFSET floatPrint
	push	rsi
	call	PrintString
	mov		rax, [aDWFloat]
	push	rax
	mov		rax, 2
	push	rax
	call	PrintDWFloat
	call	Printendl

	mov		rsi, OFFSET floatPrint
	push	rsi
	call	PrintString
	mov		rax, [aDWFloat]
	push	rax
	mov		rax, 4
	push	rax
	call	PrintDWFloat
	call	Printendl

	mov		rsi, OFFSET floatSPrint
	push	rsi
	call	PrintString
	mov		rax, [aDWSFloat]
	push	rax
	mov		rax, 4
	push	rax
	call	PrintDWFloat
	call	Printendl

	mov		rsi, OFFSET floatSPrint
	push	rsi
	call	PrintString
	mov		rax, [aDWSFloat]
	push	rax
	mov		rax, 4
	push	rax
	call	PrintDWFloatSN
	call	Printendl

	mov		rsi, OFFSET floatBinaryPrint
	push	rsi
	call	PrintString
	mov		rax, [aDWFloat]
	push	rax
	call	Print64bitFloatBinary
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

	mov		rsi, OFFSET stringInput
	push	rsi
	call	PrintString
	mov		rax, OFFSET inputBuffer
	push	rax
	mov		rax, LENGTHOF inputBuffer
	push	rax
	call	ReadText

	sub		rax, 2
	mov		[saveRAX], rax
	mov		rsi, OFFSET inputTotal
	push	rsi
	call	PrintString
	mov		rax, [saveRAX]
	push	rax
	call	Print64bitNumDecimal
	call	Printendl

	mov		rsi, OFFSET inputBuffer
	push	rsi
	mov		rax, [saveRAX]
	push	rax
	call	PrintText
	call	Printendl

	mov		rsi, OFFSET stringInput
	push	rsi
	mov		rax, OFFSET inputBuffer
	push	rax
	mov		rax, LENGTHOF inputBuffer
	push	rax
	call	ReadTextWPrompt

	sub		rax, 2
	mov		[saveRAX], rax
	mov		rsi, OFFSET inputTotal
	push	rsi
	call	PrintString
	mov		rax, [saveRAX]
	push	rax
	call	Print64bitNumDecimal
	call	Printendl

	mov		rsi, OFFSET inputBuffer
	push	rsi
	mov		rax, [saveRAX]
	push	rax
	call	PrintText
	call	Printendl

	BinInputLoop:
		mov		rsi, OFFSET binInput
		push	rsi
		call	PrintString
		call	InputBin
		jnc		NoBinError
		mov		rsi, OFFSET invalidBin
		push	rsi
		call	PrintSTring
		call	Printendl
	jmp	BinInputLoop
	NoBinError:
		push	rax
		call	Print64bitNumBinary
		call	Printendl
		push	rax
		call	Print64bitNumHex
		call	Printendl

	HexInputLoop:
		mov		rsi, OFFSET hexInput
		push	rsi
		call	PrintString
		call	InputHex
		jnc		NoHexError
		mov		rsi, OFFSET invalidHex
		push	rsi
		call	PrintString
		call	Printendl
	jmp HexInputLoop
	NoHexError:
		push	rax
		call	Print64bitNumHex
		call	Printendl
		push	rax
		call	Print64bitNumDecimal
		call	Printendl

	FloatInputLoop:
		mov		rsi, OFFSET floatInput
		push	rsi
		call	PrintString
		call	InputFloat
		jnc		NoFloatError
		mov		rsi, OFFSET	invalidFloat
		push	rsi
		call	PrintString
		call	Printendl
	jmp FloatInputLoop
	NoFloatError:
		push	rax
		mov		rax, 4
		push	rax
		call	PrintDWFloat
		call	Printendl

	mov		rsi, OFFSET pEndMessage
	push	rsi
	call	PrintString
	call	Printendl

	nop
	mov		rcx, 0
	call	ExitProcess
main ENDP
END