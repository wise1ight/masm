INCLUDE C:\Irvine32\Irvine32.inc ; Irvine32 라이브러리를 포함함

.386 ; 32비트 프로그램임을 나타냄
.model flat,stdcall ; 메모리 모델을 flat을 사용, 윈도우의 stdcall 사용
.stack 4096 ; 스택 크기를 4096 바이트로 설정
ExitProcess PROTO, dwExitCode:DWORD ; 윈도우에서 사용하는 ExitProcess의 프로토타입 선언

.data ; 데이터 영역
MSG BYTE "학번 : 16101357", 0Dh, 0Ah, "이름 : 김현욱", 0 ; 학번과, Crlf, 이름, 널 문자를 포함한 MSG라는 이름의 문자열 변수를 만듬

.code ; 코드 영역
main PROC ; main 프로시저 시작을 나타냄
	mov		edx, OFFSET MSG ; edx 레지스터에 MSG 변수의 메모리 위치를 넣음
	call	WriteString ; 콘솔 윈도우에 문자를 출력하는 Irvine32 라이브러리의 WriteString 프로시저를 호출
	INVOKE	ExitProcess,0 ; 윈도우의 ExitProcess를 호출하여 프로그램의 종료를 알림
main ENDP ; main 프로시저 끝을 나타냄
	
END main ; 프로그램의 끝, 시작점을 main 프로시저로 지정