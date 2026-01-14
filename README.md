<img width="648" height="614" alt="image" src="https://github.com/user-attachments/assets/6d12594e-ae67-452c-a273-52d2d70b156f" />


Skrip ini adalah pemanggil (launcher) otomatis untuk mempermudah proses aktivasi menggunakan MAS.

## Fitur:
- **Auto Admin Check:** Skrip otomatis meminta izin Administrator jika belum aktif.
- **One-Liner:** Bisa dijalankan hanya dengan satu baris perintah PowerShell.
- **Clean:** Tidak meninggalkan file fisik setelah dijalankan.

### Cara Menjalankan:
Salin kode berikut ke PowerShell:
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/aritrimukti/aktivasi-otomatis/refs/heads/main/aktivasi-otomatis.ps1 | iex"
