@echo off
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy RemoteSigned -File "%~dp0convert-to-avi.ps1" %*
SET INPUTSTR=
SET /P INPUTSTR="入力してください。"