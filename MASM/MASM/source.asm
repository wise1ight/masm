INCLUDE C:\Irvine32\Irvine32.inc ; Irvine32 ���̺귯���� ������

.386 ; 32��Ʈ ���α׷����� ��Ÿ��
.model flat,stdcall ; �޸� ���� flat�� ���, �������� stdcall ���
.stack 4096 ; ���� ũ�⸦ 4096 ����Ʈ�� ����
ExitProcess PROTO, dwExitCode:DWORD ; �����쿡�� ����ϴ� ExitProcess�� ������Ÿ�� ����

.data ; ������ ����
MSG BYTE "�й� : 16101357", 0Dh, 0Ah, "�̸� : ������", 0 ; �й���, Crlf, �̸�, �� ���ڸ� ������ MSG��� �̸��� ���ڿ� ������ ����

.code ; �ڵ� ����
main PROC ; main ���ν��� ������ ��Ÿ��
	mov		edx, OFFSET MSG ; edx �������Ϳ� MSG ������ �޸� ��ġ�� ����
	call	WriteString ; �ܼ� �����쿡 ���ڸ� ����ϴ� Irvine32 ���̺귯���� WriteString ���ν����� ȣ��
	INVOKE	ExitProcess,0 ; �������� ExitProcess�� ȣ���Ͽ� ���α׷��� ���Ḧ �˸�
main ENDP ; main ���ν��� ���� ��Ÿ��
	
END main ; ���α׷��� ��, �������� main ���ν����� ����