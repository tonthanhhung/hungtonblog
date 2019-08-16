# Hướng dẫn cài đặt môi trường frontend dev chạy Linux trên Windows 10 (phần 1)

## Cài đặt WSL - Windows Subsystem Linux
WSL sẽ cho phép Windows có những tính năng cơ bản như Linux, các bạn có thể chạy nhiều câu lệnh, ứng dụng linux cơ bản.

1. Mở Powershell (as administration) (Winkey+X, A):
```Powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
2. Khởi động lại Windows
3. Cài đặt Linux Distro từ Windows Store (mình dùng Ubuntu 18.04)

![Cài đặt linus distro từ Windows store](https://i.imgur.com/2pkLPTY.png)

4. Khởi chạy Linux Distro vừa cài đặt (từ start menu), và cài đặt Linux Distro. 
![](https://i.imgur.com/2TPI0Ju.png)

Để tìm hiểu thêm về WSL, bạn vào đây:
- https://docs.microsoft.com/en-us/windows/wsl/about
- https://blogs.msdn.microsoft.com/commandline/learn-about-windows-console-and-windows-subsystem-for-linux-wsl/

Sau khi cài đặt WSL thì bạn đã có thể bắt đầu sử dụng để. clone project về dev thôi 😏.

Vấn đề tiếp theo là: khi wsl được cài đặt thì đồng thời nó cũng dựng cho bạn 1 linux directory system (được giấu trong `appData` của windows user folder) nhưng bạn được khuyến cáo là không được thay đổi những file nằm trong đây nếu bạn không muốn làm hỏng cái Linux Distro bạn vừa cài.
![](https://i.imgur.com/HyNLrwg.png)
 OK, vậy nghĩa là bạn nên lưu project source code của bạn trong thư mục Windows thay vì trong WSL,

**Note**: Bạn có thể truy cập `C:\` bằng `/mnt/c/`

**Note**: khoẳng trắng trong folder name được escape bằng `\`. vd. 

```
cd /mnt/c/Program\ Files/
```
Windows 10 có tính năng Real Time Proctection - giúp hạn chế rủi ro về virus, điều này làm ảnh hưởng đến tốc độ của WSL. Để cải thiện tốc độ truy cập IO từ WSL1 (WSL2 hứa hẹn sẽ cải thiện tình trạng này), bạn có thể dùng PS1 script giúp bạn loại bỏ các thư mục chứ file 
