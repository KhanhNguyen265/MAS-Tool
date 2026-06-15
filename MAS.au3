#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y ; Chạy dưới dạng 64-bit nếu hệ điều hành là 64-bit
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; Bắt buộc script phải chạy với quyền Administrator
#RequireAdmin

; Định nghĩa lệnh PowerShell cần chạy
Local $sCommand = "irm https://get.activated.win | iex"

; Cách 1: Chạy ẩn (Không hiện cửa sổ CMD - Khuyên dùng nếu muốn mượt mà)
RunWait(@ComSpec & " /c powershell -Command """ & $sCommand & """", "", @SW_SHOW)

; Cách 2: Nếu bạn muốn hiển thị cửa sổ CMD để theo dõi quá trình:
; Bỏ dấu chấm phẩy (;) ở dòng dưới để sử dụng:
; RunWait(@ComSpec & " /k powershell -Command """ & $sCommand & """", "", @SW_SHOW)