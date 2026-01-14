# Windows Auto Activation Script

Skrip ini adalah pemanggil (launcher) otomatis untuk mempermudah proses aktivasi menggunakan MAS.

## Fitur:
- **Auto Admin Check:** Skrip otomatis meminta izin Administrator jika belum aktif.
- **One-Liner:** Bisa dijalankan hanya dengan satu baris perintah PowerShell.
- **Clean:** Tidak meninggalkan file fisik setelah dijalankan.

### Cara Menjalankan:
Salin kode berikut ke PowerShell:
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/aritrimukti/aktivasi-otomatis/refs/heads/main/aktivasi-otomatis.ps1 | iex"

```
