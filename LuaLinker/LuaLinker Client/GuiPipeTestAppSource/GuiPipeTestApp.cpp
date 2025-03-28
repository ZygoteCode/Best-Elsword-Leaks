// GuiPipeTestApp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <stdint.h>
#include <stdio.h>
#include <Windows.h>


#define GUI_PIPE_DATA_TYPE_PRINT_STRING (-1)
#define GUI_PIPE_DATA_TYPE_UNKNOWN_INPUT 0


//Reads an arbitrary length string from a file
char *inputString(FILE* fp) {
	size_t size = 64;
	char *str;
	int ch;
	size_t len = 0;
	str = (char*)realloc(NULL, sizeof(char)*size);
	if (!str)return str;

	while (EOF != (ch = fgetc(fp)) && ch != '\n' && ch != 0) {
		str[len++] = ch;
		if (len == size) {
			str = (char*)realloc(str, sizeof(char)*(size *= 2));
			if (!str)return str;
		}
	}
	str[len++] = '\0';

	return (char*)realloc(str, sizeof(char)*len);
}


int main()
{
	printf("Process ID: ");
	char* pidStr = inputString(stdin);
	int processId = atoi(pidStr);
	free(pidStr);

	uint64_t dwPipeId = (((uint64_t)processId) << 16) * 7 + (1 << 22);
	const char* pipePrefix = "\\\\.\\pipe\\";
	char* pipeName = (char*)malloc(strlen(pipePrefix) + 32);
	strcpy(pipeName, pipePrefix);
	int pslen = strlen(pipeName);
	pipeName[pslen] = 'y';
	_ui64toa(dwPipeId, pipeName + pslen + 1, 36);

	//printf("%llu\n", dwPipeId);
	//printf("%s\n", pipeName);

	HANDLE hPipe = CreateNamedPipeA(pipeName, PIPE_ACCESS_DUPLEX, PIPE_TYPE_BYTE | PIPE_WAIT, 1, 1024, 1024, 0, NULL);

	free(pipeName);

	if (hPipe == INVALID_HANDLE_VALUE) {
		printf("Unable to create pipe.\n");
		return 1;
	}

	printf("Pipe created\n");

	if (!ConnectNamedPipe(hPipe, NULL)) {
		printf("ConnectNamedPipe failed\n");
		return 1;
	}

	printf("Pipe connected\n");

	while (true) {
		int32_t dataType;
		DWORD dwBytesRead;
		if (!ReadFile(hPipe, &dataType, sizeof(dataType), &dwBytesRead, NULL) || (dwBytesRead != sizeof(dataType))) {
			printf("fread failed: %d %d\n", GetLastError(), dwBytesRead);
			Sleep(INFINITE);
			return 1;
		}

		if (dataType == GUI_PIPE_DATA_TYPE_PRINT_STRING) {
			//Print stuff
			char data;
			DWORD dwBytesRead;
			while (ReadFile(hPipe, &data, sizeof(data), &dwBytesRead, NULL) && (dwBytesRead == sizeof(data)) && data) {
				fputc(data, stdout);
			}
		} else {
			//Read input from the user
			printf("(%d) ", dataType);
			char* line = inputString(stdin);
			DWORD dwBytesRead;
			WriteFile(hPipe, line, strlen(line) + 1, &dwBytesRead, NULL);
			FlushFileBuffers(hPipe);
			free(line);
		}
	}



    return 0;
}

