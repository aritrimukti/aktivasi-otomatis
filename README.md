Tentu, ini adalah **Panduan Penggunaan** dan **Dokumen README** sederhana yang bisa Anda gunakan untuk repositori GitHub Anda agar terlihat lebih profesional dan mudah dimengerti oleh orang lain atau Anda sendiri di masa depan.

### 📝 Cara Penggunaan Skrip (Panduan Cepat)

Untuk menjalankan skrip ini tanpa perlu mengunduh file, cukup ikuti satu baris perintah di bawah ini:

1. Buka **PowerShell** (tidak perlu Run as Admin, skrip akan memintanya sendiri).
2. Salin dan tempel perintah berikut:
```powershell
irm https://raw.githubusercontent.com/UsernameAnda/NamaRepo/main/namafile.ps1 | iex

```


3. Klik **Yes** saat muncul jendela konfirmasi Administrator (UAC).

---

### 🔍 Penjelasan Teknis Isi Skrip

Jika Anda ingin menjelaskan isi skrip tersebut di dalam dokumen GitHub (README.md), berikut adalah poin-poin penjelasannya:

| Bagian Kode | Fungsi dan Penjelasan |
| --- | --- |
| **`$currentPrincipal`** | Mendeteksi identitas pengguna yang sedang menjalankan PowerShell saat ini. |
| **`if (-not ... Administrator)`** | Logika pengecekan. Jika skrip mendeteksi bahwa ia **tidak** berjalan dengan hak akses Admin, maka perintah di dalam kurung kurawal `{ }` akan dieksekusi. |
| **`Start-Process ... -Verb RunAs`** | Perintah ini berfungsi untuk "memanggil ulang" dirinya sendiri tetapi dengan meminta izin Administrator kepada sistem Windows. |
| **`Write-Host ... -ForegroundColor Green`** | Memberikan feedback visual kepada Anda bahwa skrip sudah berada di mode Admin dan siap bekerja. |
| **`irm ... | iex`** |

---

### 💡 Tips Tambahan untuk Repositori Anda

Agar repositori Anda lebih bagus, Anda bisa membuat file baru di GitHub dengan nama **`README.md`** dan masukkan teks berikut:

```markdown
# Windows Auto Activation Script

Skrip ini adalah pemanggil (launcher) otomatis untuk mempermudah proses aktivasi menggunakan MAS.

### Fitur:
- **Auto Admin Check:** Skrip otomatis meminta izin Administrator jika belum aktif.
- **One-Liner:** Bisa dijalankan hanya dengan satu baris perintah PowerShell.
- **Clean:** Tidak meninggalkan file fisik setelah dijalankan.

### Cara Menjalankan:
Salin kode berikut ke PowerShell:
`irm https://raw.githubusercontent.com/USER/REPO/main/FILE.ps1 | iex`

```
