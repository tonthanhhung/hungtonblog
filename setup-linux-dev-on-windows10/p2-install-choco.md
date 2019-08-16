

## Cài đặt Chocolately - Package Management for Windows
Cũng giống như `apt`, `yum`, `homebrew`, thì `choco` là dành riêng cho Windows.

Trang chủ: https://chocolatey.org
Cài đặt:
- Mở `cmd.exe` (`Winkey`+`R`, gõ `cmd`):
```dos
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```